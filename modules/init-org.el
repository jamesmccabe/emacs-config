;;; init-org.el --- org mode settings

; ToFix: to use latest org-mode package instead of builtin
;(use-package org)

;; use syntax highlighting in source code blocks
(setq org-src-fontify-natively t)

;; ToFix: org code blocks indentation
;; Use C-c ' for now
;(setq org-src-preserve-indentation t)
;(setq org-startup-indented t
;      org-indent-mode t)

;; turn of company mode for org mode
(setq company-global-modes '(not org-mode))

;; use Shift + arrow keys to select text
;Fixme: this clobbers below keys
;(setq org-support-shift-select t)

(defun my-org-mode-keys ()
  (define-key org-mode-map (kbd "C-c <left>") 'org-shiftleft)
  (define-key org-mode-map (kbd "C-c <right>") 'org-shiftright))

(add-hook 'org-mode-hook 'my-org-mode-keys)

(provide 'init-org)

;;; init-org.el ends here
