(TeX-add-style-hook
 "preamble"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("biblatex" "hyperref" "backend=biber" "style=authortitle" "") ("inputenc" "utf8") ("babel" "english") ("isodate" "french") ("algorithm2e" "ruled" "noend" "algo2e") ("fontenc" "T1") ("pdfcomment" "author={Accacio}") ("blindtext" "math")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "math"
    "biblatex"
    "inputenc"
    "babel"
    "tikz"
    "bm"
    "ulem"
    "parcolumns"
    "multicol"
    "booktabs"
    "isodate"
    "algorithm2e"
    "fontenc"
    "lmodern"
    "pgfplots"
    "fix-cm"
    "grffile"
    "pgfpages"
    "xparse"
    "pifont"
    "color"
    "comment"
    "xargs"
    "pdfcomment"
    "mathtools"
    "amsmath"
    "amsthm"
    "mathrsfs"
    "mathbbol"
    "eucal"
    "subcaption"
    "caption"
    "float"
    "array"
    "xr"
    "subfiles"
    "blindtext"
    "ifthen"
    "csquotes"
    "nicefrac"
    "xfrac"
    "etoolbox"
    "fontawesome"
    "mathabx"
    "animate"
    "colortbl"
    "amssymb"
    "accents")
   (TeX-add-symbols
    '("doing" ["argument"] 1)
    '("todo" ["argument"] 1)
    '("warning" 1)
    '("tikzmarktext" 2)
    '("tikzmark" 1)
    '("encircle" 1)
    "webcast"
    "booksymbol"
    "articlesymbol"
    "draft"
    "final"
    "script")
   (LaTeX-add-xcolor-definecolors
    "mpc_agent"
    "mpc_coordinator")
   (LaTeX-add-color-definecolors
    "supelecRed"
    "supelecPurple"
    "mpc_agent"
    "mpc_coordinator"
    "mpc_green")
   (LaTeX-add-amsthm-newtheorems
    "assumption"
    "assumptions"
    "remark"))
 :latex)

