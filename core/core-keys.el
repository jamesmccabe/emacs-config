;;; core-keys.el --- Core Emacs keybindings

;; increase/decrease font size.
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; move current line up or down
(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)

;; toggle line numbers
(global-set-key (kbd "C-c n") 'toggle-numbers)

;; toggle line numbers
(global-set-key (kbd "C-c f") 'toggle-fringe)

(provide 'core-keys)

;;; core-keys.el ends here
