#!/bin/bash
set -e

echo "=== Building RenderCV (Opal Theme) PDF ==="
rendercv render rendercv_src/shekhar_chaurasiya_cv.yaml -o pdf_deliverables
cp rendercv_src/pdf_deliverables/Shekhar_Chaurasiya_CV.pdf pdf_deliverables/shekhar_chaurasiya_rendercv.pdf
cp rendercv_src/pdf_deliverables/Shekhar_Chaurasiya_CV.pdf assets/pdf/shekhar_chaurasiya_rendercv.pdf

echo "=== Building Typst Resume PDF ==="
typst compile source/resume_2page.typ pdf_deliverables/shekhar_chaurasiya_typst.pdf
cp pdf_deliverables/shekhar_chaurasiya_typst.pdf assets/pdf/shekhar_chaurasiya_typst.pdf

echo "=== All Resume PDF Deliverables Successfully Compiled ==="
