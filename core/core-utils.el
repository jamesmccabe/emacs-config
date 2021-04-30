;;; core-utils.el - Extra utilities for Emacs

;; utility packages config
(use-package which-key
  :defer 3
  :diminish 'which-key-mode
  :config
  (which-key-mode 1))

(use-package rainbow-mode
  :ensure t)

;; remove "ElDoc" from modeline
(diminish 'eldoc-mode)

(provide 'core-utils)

;;; core-utils.el ends here
