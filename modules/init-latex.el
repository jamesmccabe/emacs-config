;;; init-latex.el --- My Emacs LaTeX settings

;; use AucTeX package for LaTeX editing
(use-package tex
  :ensure auctex
  :mode ("\\.tex\\'" . latex-mode))

;; LaTeX code indentation
(setq LaTeX-indent-level 2)
(setq LaTeX-item-indent 0)

(provide 'init-latex)

;;; init-latex.el ends here
