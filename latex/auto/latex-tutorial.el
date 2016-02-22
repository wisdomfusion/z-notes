(TeX-add-style-hook
 "latex-tutorial"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("ctexart" "12pt" "a4paper" "twoside")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "paperwidth=185mm" "paperheight=230mm" "textheight=190mm" "textwidth=145mm" "left=20mm" "right=20mm" "top=25mm" "bottom=15mm") ("hyperref" "CJKbookmarks" "colorlinks" "bookmarksnumbered=true" "pdfstartview=FitH" "linkcolor=black")))
   (TeX-run-style-hooks
    "latex2e"
    "ctexart"
    "ctexart12"
    "geometry"
    "fontspec"
    "fancybox"
    "colortbl"
    "fancyhdr"
    "hyperref")))

