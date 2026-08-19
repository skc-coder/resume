# Shekhar Chaurasiya - Curriculum Vitae & GitHub Pages Resume

Personal online resume website configured for **GitHub Pages** (built on [online-cv](https://github.com/sharu725/online-cv) with a green theme and no photo) along with printable PDF generators (**RenderCV** Opal theme and **Typst**).

## Setup & Installation

Clone the repository and install required tools:

```bash
git clone https://github.com/skc-coder/resume.git
cd resume

# Install RenderCV and Typst CLI
uv tool install "rendercv[full]"
```

## Running & Previewing

### 1. Build All PDF Deliverables

Render both RenderCV (Opal theme green) and Typst resume PDFs:

```bash
./scripts/build_all.sh
```

- **RenderCV PDF (Opal Theme):** `pdf_deliverables/shekhar_chaurasiya_rendercv.pdf`
- **Typst PDF:** `pdf_deliverables/shekhar_chaurasiya_typst.pdf`

### 2. Run Jekyll GitHub Pages Locally

```bash
bundle install
bundle exec jekyll serve
```

Open `http://localhost:4000/resume/` in your browser.

## Update & Run

Keep your local repository updated and rebuild all assets:

```bash
git pull origin main
./scripts/build_all.sh
```
