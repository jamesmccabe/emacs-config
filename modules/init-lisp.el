;;; init-lisp.el --- Slime setup for Common Lisp

(use-package slime
  :init
  (setq inferior-lisp-program "sbcl")
  :config
  (slime-setup '(slime-fancy))
  (use-package slime-company))

;; for StumpWM, set `defcommand' as keyword
;; https://github.com/alezost/emacs-config/blob/master/utils/al-lisp.el
;; Alex Kost, License GPL v3++
(put 'defcommand 'doc-string-elt 4)

(defvar lisp-defcommand-regexp
  (rx "(" (group "defcommand")
      symbol-end
      (zero-or-more blank)
      (zero-or-one "(")
      (zero-or-one
       (group (one-or-more (or (syntax word) (syntax symbol))))))
  "Regexp to match 'defcommand' keyword.")

(defun lisp-add-defcommand-font-lock-keywords ()
  "Add font-lock keywords to highlight 'defcommand' properly.
Call this function once!"
  (font-lock-add-keywords
   'lisp-mode
   `((,lisp-defcommand-regexp
      (1 font-lock-keyword-face)
      (2 font-lock-function-name-face nil t)))))

(add-hook 'lisp-mode-hook #'lisp-add-defcommand-font-lock-keywords)

(provide 'init-lisp)

;;; init-lisp.el ends here
