(TeX-add-style-hook
 "presentation"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "aspectratio=169")))
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "preamble"
    "../data/resilient_eq/table_costs_all_houses_error_norm"
    "../data/resilient_ineq/table_costs_all_houses_error_norm"
    "beamer"
    "beamer10")
   (TeX-add-symbols
    "height"
    "length"
    "ang"
    "vecmag")
   (LaTeX-add-labels
    "eq:lambdafuntheta_tilde"
    "tab:eq_costsGlobalLocal"
    "fig:non_feasible"
    "fig:parallel_only_one_active"
    "fig:triangle_inequality")
   (LaTeX-add-bibliographies
    "../../../bibliography.bib")
   (LaTeX-add-lengths
    "fheight"
    "fwidth")
   (LaTeX-add-color-definecolors
    "mycolor1"))
 :latex)

