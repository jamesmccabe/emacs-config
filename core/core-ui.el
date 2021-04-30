;;; core-ui.el --- Core UI Emacs settings

;; change title bar name
(setq frame-title-format "GNU Emacs")

;; load theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'sientifik t)

;; set font
(add-to-list 'default-frame-alist
	     '(font . "DejaVu Sans Mono-12"))

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;(setq-default indicate-buffer-boundaries 'left)
;(setq-default indicate-empty-lines t)

(provide 'core-ui)

;;; core-ui.el ends here
