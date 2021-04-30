;;; init-latex.el --- My Emacs LaTeX settings

;; use AucTeX package for LaTeX editing
(use-package tex
  :ensure auctex
  :mode ("\\.tex\\'" . latex-mode))

(provide 'init-latex)

;;; init-latex.el ends here
