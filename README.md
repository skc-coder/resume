# Shekhar Chaurasiya - GitHub Pages Resume

Personal online resume website configured for **GitHub Pages** (built on [online-cv](https://github.com/sharu725/online-cv) with a green theme and no photo) along with a **Typst** PDF generator.

## Setup & Installation

Clone the repository:

```bash
git clone https://github.com/skc-coder/resume.git
cd resume
```

## Running & Building

### 1. Build Typst PDF

Render your Typst resume PDF:

```bash
./scripts/build_all.sh
```

- **Typst PDF Output:** `pdf_deliverables/shekhar_chaurasiya_typst.pdf`

### 2. Run Jekyll GitHub Pages Locally

```bash
bundle install
bundle exec jekyll serve
```

Open `http://localhost:4000/resume/` in your browser.

## How to Access Your Site on GitHub Pages

1. Go to your repository settings on GitHub: [github.com/skc-coder/resume/settings/pages](https://github.com/skc-coder/resume/settings/pages)
2. Under **Build and deployment > Source**, select **Deploy from a branch**.
3. Under **Branch**, select `master` and folder `/ (root)`, then click **Save**.
4. Your website will be live at: **`https://skc-coder.github.io/resume/`**
