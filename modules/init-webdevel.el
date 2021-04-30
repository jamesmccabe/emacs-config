;;; init-webdevel.el --- Web devel config

(use-package web-mode
  :mode "\\.html\\'"
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(provide 'init-webdevel)

;;; init-webdevel ends here
