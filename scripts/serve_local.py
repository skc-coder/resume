#!/usr/bin/env python3
import http.server
import socketserver
import os
import yaml
import markdown
import re

BASE_DIR = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)), '..'))
PORT = 8000

with open(os.path.join(BASE_DIR, '_config.yml'), 'r', encoding='utf-8') as f:
    site_config = yaml.safe_load(f) or {}

with open(os.path.join(BASE_DIR, '_data/data.yml'), 'r', encoding='utf-8') as f:
    site_data = yaml.safe_load(f) or {}

def get_by_path(data, path):
    parts = path.split('.')
    curr = data
    for p in parts:
        if isinstance(curr, dict) and p in curr:
            curr = curr[p]
        else:
            return None
    return curr

def process_liquid_expressions(text, context):
    def repl(m):
        expr = m.group(1).strip()
        if expr == 'site.baseurl':
            return ''
        if expr == 'site.title':
            return site_config.get('title', '')
        if expr == 'site.chrome_mobile_color':
            return site_config.get('chrome_mobile_color', '#2e7d32')
        if 'site.description' in expr:
            return site_config.get('description', '')
        if expr.startswith('site.data.data.'):
            path = expr.replace('site.data.data.', '')
            val = get_by_path(site_data, path)
            return str(val) if val is not None else ''
        if expr.startswith('sidebar.'):
            path = expr.replace('sidebar.', '')
            val = get_by_path(site_data.get('sidebar', {}), path)
            return str(val) if val is not None else ''
        return ''
    return re.sub(r'\{\{\s*([^\}]+)\s*\}\}', repl, text)

def render_template_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        raw = f.read()
    if raw.startswith('---'):
        parts = raw.split('---', 2)
        if len(parts) >= 3:
            raw = parts[2]
            
    def inc_repl(m):
        inc_file = m.group(1).strip()
        inc_path = os.path.join(BASE_DIR, '_includes', inc_file)
        if os.path.exists(inc_path):
            return render_template_file(inc_path)
        return ''

    raw = re.sub(r'\{%\s*include\s+([\w\.\-]+)\s*%\}', inc_repl, raw)
    return raw

def build_full_page(page_name):
    # Render body
    body_raw = render_template_file(os.path.join(BASE_DIR, page_name))
    
    # Process custom liquid conditionals for online-cv
    # handle education conditionally
    edu_section = render_template_file(os.path.join(BASE_DIR, '_includes/education.html')) if site_data.get('education') else ''
    body_raw = re.sub(r'\{%\s*unless\s+site\.data\.data\.sidebar\.education\s*%\}.*?\{%\s*endunless\s*%\}', '', body_raw, flags=re.DOTALL)
    
    # Render layout
    layout_raw = render_template_file(os.path.join(BASE_DIR, '_layouts/default.html'))
    layout_raw = layout_raw.replace('{{ content }}', body_raw)
    
    # Replace sidebar block manually to ensure exact online-cv structure
    sidebar_html = f'''
    <div class="sidebar-wrapper">
        <div class="profile-container">
            <h1 class="name">{site_data.get("sidebar", {}).get("name", "")}</h1>
            <h3 class="tagline">{site_data.get("sidebar", {}).get("tagline", "")}</h3>
        </div>
        
        <div class="contact-container container-block">
            <ul class="list-unstyled contact-list">
                <li class="email"><i class="fas fa-envelope"></i> <a href="mailto:{site_data.get("sidebar", {}).get("email", "")}">{site_data.get("sidebar", {}).get("email", "")}</a></li>
                <li class="phone"><i class="fas fa-phone"></i> <a href="tel:{site_data.get("sidebar", {}).get("phone", "")}">{site_data.get("sidebar", {}).get("phone", "")}</a></li>
                <li class="passport"><i class="fas fa-passport"></i> <span>{site_data.get("sidebar", {}).get("citizenship", "")}</span></li>
                <li class="timezone"><i class="fas fa-clock"></i> <a href="https://worldtimeapi.org/timezone/{site_data.get("sidebar", {}).get("timezone", "")}" target="_blank">{site_data.get("sidebar", {}).get("timezone", "")} Timezone</a></li>
                <li class="website"><i class="fas fa-globe-americas"></i> <a href="{site_data.get("sidebar", {}).get("website", "")}" target="_blank">{site_data.get("sidebar", {}).get("website", "")}</a></li>
                <li class="linkedin"><i class="fab fa-linkedin"></i> <a href="https://linkedin.com/in/{site_data.get("sidebar", {}).get("linkedin", "")}" target="_blank">{site_data.get("sidebar", {}).get("linkedin", "")}</a></li>
                <li class="github"><i class="fab fa-github"></i> <a href="https://github.com/{site_data.get("sidebar", {}).get("github", "")}" target="_blank">{site_data.get("sidebar", {}).get("github", "")}</a></li>
                <li class="leetcode"><i class="fas fa-code"></i> <a href="https://leetcode.com/u/{site_data.get("sidebar", {}).get("leetcode", "")}" target="_blank">{site_data.get("sidebar", {}).get("leetcode", "")}</a></li>
            </ul>
        </div>
        
        <div class="education-container container-block">
            <h2 class="container-block-title">Education</h2>
            <div class="item">
                <h4 class="degree">{site_data.get("education", {}).get("info", [{}])[0].get("degree", "")}</h4>
                <h5 class="meta">{site_data.get("education", {}).get("info", [{}])[0].get("university", "")}</h5>
                <div class="time">{site_data.get("education", {}).get("info", [{}])[0].get("time", "")}</div>
            </div>
        </div>

        <div class="languages-container container-block">
            <h2 class="container-block-title">Languages</h2>
            <ul class="list-unstyled interests-list">
                {"".join([f'<li>{l.get("idiom")} <span class="lang-desc">({l.get("level")})</span></li>' for l in site_data.get("sidebar", {}).get("languages", {}).get("info", [])])}
            </ul>
        </div>

        <div class="interests-container container-block">
            <h2 class="container-block-title">Technical Focus & Interests</h2>
            <ul class="list-unstyled interests-list">
                {"".join([f'<li>{i.get("item")}</li>' for i in site_data.get("sidebar", {}).get("interests", {}).get("info", [])])}
            </ul>
        </div>
    </div>
    '''
    
    layout_raw = re.sub(r'\{%\s*include\s+sidebar\.html\s*%\}', sidebar_html, layout_raw)
    
    # Process liquid tags like markdownify and variables
    final_html = process_liquid_expressions(layout_raw, {})
    
    # Replace markdownify calls
    def markdown_repl(m):
        val = m.group(1)
        return markdown.markdown(val)
        
    return final_html

class OnlineCVHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        clean_path = self.path.split('?')[0].rstrip('/')
        if clean_path in ['', '/index.html', '/resume']:
            html = build_full_page('index.html')
            self.send_response(200)
            self.send_header('Content-type', 'text/html; charset=utf-8')
            self.end_headers()
            self.wfile.write(html.encode('utf-8'))
        elif clean_path == '/print':
            html = build_full_page('print.html')
            self.send_response(200)
            self.send_header('Content-type', 'text/html; charset=utf-8')
            self.end_headers()
            self.wfile.write(html.encode('utf-8'))
        else:
            super().do_GET()

if __name__ == '__main__':
    os.chdir(BASE_DIR)
    socketserver.TCPServer.allow_reuse_address = True
    with socketserver.TCPServer(("0.0.0.0", PORT), OnlineCVHandler) as httpd:
        print(f"Online CV Local Server running at http://localhost:{PORT}")
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            pass
