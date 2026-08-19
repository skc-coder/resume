#!/usr/bin/env python3
import http.server
import socketserver
import os
import yaml
import markdown
from liquid import Environment, FileSystemLoader

BASE_DIR = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)), '..'))
PORT = 8000

# Liquid environment
env = Environment(loader=FileSystemLoader([
    BASE_DIR,
    os.path.join(BASE_DIR, '_includes'),
    os.path.join(BASE_DIR, '_layouts')
]))

with open(os.path.join(BASE_DIR, '_config.yml'), 'r', encoding='utf-8') as f:
    site_config = yaml.safe_load(f) or {}

with open(os.path.join(BASE_DIR, '_data/data.yml'), 'r', encoding='utf-8') as f:
    site_data = yaml.safe_load(f) or {}

site_config['data'] = {'data': site_data}

def markdownify(value):
    if not value:
        return ""
    return markdown.markdown(str(value))

env.add_filter('markdownify', markdownify)

def render_file(file_path, context):
    with open(file_path, 'r', encoding='utf-8') as f:
        raw = f.read()
    if raw.startswith('---'):
        parts = raw.split('---', 2)
        if len(parts) >= 3:
            raw = parts[2]
    # Manually resolve Liquid includes to handle Jekyll include names smoothly
    def inc_repl(match):
        inc_name = match.group(1).strip()
        inc_path = os.path.join(BASE_DIR, '_includes', inc_name)
        if os.path.exists(inc_path):
            return render_file(inc_path, context)
        return ""
    
    import re
    raw = re.sub(r'\{%\s*include\s+([\w\.\-]+)\s*%\}', inc_repl, raw)
    
    # Evaluate liquid template
    tpl = env.from_string(raw)
    return tpl.render(**context)

def render_jekyll_page(page_rel_path):
    context = {'site': site_config}
    content_html = render_file(os.path.join(BASE_DIR, page_rel_path), context)
    
    # Render layout
    context['content'] = content_html
    layout_path = os.path.join(BASE_DIR, '_layouts/default.html')
    final_html = render_file(layout_path, context)
    return final_html

class JekyllDevHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        clean_path = self.path.split('?')[0].rstrip('/')
        if clean_path in ['', '/index.html', '/resume']:
            html = render_jekyll_page('index.html')
            self.send_response(200)
            self.send_header('Content-type', 'text/html; charset=utf-8')
            self.end_headers()
            self.wfile.write(html.encode('utf-8'))
        elif clean_path == '/print':
            html = render_jekyll_page('print.html')
            self.send_response(200)
            self.send_header('Content-type', 'text/html; charset=utf-8')
            self.end_headers()
            self.wfile.write(html.encode('utf-8'))
        else:
            super().do_GET()

if __name__ == '__main__':
    os.chdir(BASE_DIR)
    socketserver.TCPServer.allow_reuse_address = True
    with socketserver.TCPServer(("0.0.0.0", PORT), JekyllDevHandler) as httpd:
        print(f"Jekyll Local Server running at http://localhost:{PORT}")
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            pass
