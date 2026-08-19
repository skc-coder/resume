# Resume Directory & Deliverable Guide

Professional **Typst-based resume suite** for **Shekhar Chaurasiya** (B.Tech Computer Science & Engineering, CGPA 9.1/10.0, GATE 2026 AIR 2098).

---

## 📁 Directory Structure

```
.
├── certificates/         # Original PDFs & scorecards (GATE, NPTEL, Salesforce, Udemy, LinkedIn)
├── pdf_deliverables/     # Compiled resume PDFs (clean and certificate-attached variants)
├── source/               # Typst source code (.typ) and vector SVG icons
└── README.md             # Guide and compilation instructions
```

---

## 📄 PDF Deliverables (`pdf_deliverables/`)

| File Path | Description | Page Count | Target Use Case |
|---|---|---|---|
| [`pdf_deliverables/resume_2page_nocert.pdf`](file:///home/skc/dev/resume/pdf_deliverables/resume_2page_nocert.pdf) | **2-Page Short Resume** (Clean, No Certs) | 2 Pages | Fast recruiter reviews, standard job portals |
| [`pdf_deliverables/resume_2page_with_certs.pdf`](file:///home/skc/dev/resume/pdf_deliverables/resume_2page_with_certs.pdf) | **2-Page Resume + Attached Certs & Scorecard** | 13 Pages | Fast applications requiring verified certificate attachments |
| [`pdf_deliverables/resume_multipage_nocert.pdf`](file:///home/skc/dev/resume/pdf_deliverables/resume_multipage_nocert.pdf) | **Detailed Multi-Page Resume** (Clean, No Certs) | 3 Pages | In-depth technical evaluation, research roles |
| [`pdf_deliverables/resume_multipage_with_certs.pdf`](file:///home/skc/dev/resume/pdf_deliverables/resume_multipage_with_certs.pdf) | **Detailed Multi-Page Resume + Attached Certs & Scorecard** | 14 Pages | Complete academic and professional portfolio submission |

---

## 🛠️ Typst Source Files (`source/`)

- [`source/resume_2page.typ`](file:///home/skc/dev/resume/source/resume_2page.typ): Source file for 2-Page Short Resume
- [`source/resume_multipage.typ`](file:///home/skc/dev/resume/source/resume_multipage.typ): Source file for Detailed Multi-Page Resume
- [`source/icons/`](file:///home/skc/dev/resume/source/icons): Vector SVG icons (`phone.svg`, `email.svg`, `github.svg`, `linkedin.svg`, `leetcode.svg`)

---

## ⚙️ Compilation & PDF Bundling

```bash
cd /home/skc/dev/resume

# 1. Compile Typst PDF files
typst compile source/resume_2page.typ pdf_deliverables/resume_2page_nocert.pdf
typst compile source/resume_multipage.typ pdf_deliverables/resume_multipage_nocert.pdf

# 2. Bundle PDFs with Certificate Appendices
python3 -c "
import pypdf

certs = [
    'certificates/GATE_2026_Scorecard.pdf',
    'certificates/Problem_Solving_C_NPTEL.pdf',
    'certificates/Result C++ NPTEL.pdf',
    'certificates/Programming In Java.pdf',
    'certificates/AI associate Salesforce.pdf',
    'certificates/Certificate Salesforce_.pdf',
    'certificates/CertificateOfCompletion_Building with Google Gemini Advanced and Ultra.pdf',
    'certificates/CertificateOfCompletion_Raspberry Pi Essential Training 2022.pdf',
    'certificates/Udemy_C_Masterclass.pdf',
    'certificates/HACKATHON HEISTERS.pdf'
]

def bundle(source, out):
    r = pypdf.PdfReader(source)
    w = pypdf.PdfWriter()
    for p in r.pages: w.add_page(p)
    for c in certs:
        c_reader = pypdf.PdfReader(c)
        for p in c_reader.pages: w.add_page(p)
    with open(out, 'wb') as f: w.write(f)

bundle('pdf_deliverables/resume_2page_nocert.pdf', 'pdf_deliverables/resume_2page_with_certs.pdf')
bundle('pdf_deliverables/resume_multipage_nocert.pdf', 'pdf_deliverables/resume_multipage_with_certs.pdf')
print('PDF bundles updated!')
"
```
