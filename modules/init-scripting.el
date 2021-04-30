;;; init-scripting.el

;; make scripts executable after saving
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

(provide 'init-scripting)
;;; init-scripting.el ends here
