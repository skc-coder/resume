#!/bin/bash
set -e

echo "=== Building Typst Resume PDF ==="
typst compile source/resume_2page.typ pdf_deliverables/shekhar_chaurasiya_typst.pdf
cp pdf_deliverables/shekhar_chaurasiya_typst.pdf assets/pdf/shekhar_chaurasiya_typst.pdf

echo "=== Typst Resume PDF Deliverable Successfully Compiled ==="
