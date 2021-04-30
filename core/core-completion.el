;;; core-completion.el --- completition modes for Emacs

;; ido mode
(use-package ido-vertical-mode
  :config
  (progn
    (ido-vertical-mode 1)
    (ido-mode)
    (setq ido-vertical-define-keys 'C-n-C-p-up-and-down)))

;; save ido.last to .emacs.d/.emacs-backups
(setq ido-save-directory-list-file
      (expand-file-name "ido.last" emacs-savefile-dir))

;; recentf mode
(use-package recentf
  :config
  (setq recentf-save-file (expand-file-name "recentf" emacs-savefile-dir)
	recentf-max-saved-items 50
        recentf-max-menu-items 15
        ;; disable recentf-cleanup on Emacs start, because it can cause
        ;; problems with remote files
        recentf-auto-cleanup 'never)
  (recentf-mode 1))

(defun ido-recentf-open ()
  "Use `ido-completing-read' to \\[find-file] a recent file"
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      (message "Opening file...")
    (message "Aborting")))

;; get rid of `find-file-read-only' and replace it with something more useful
(global-set-key (kbd "C-c r") 'ido-recentf-open)

;; smex
(use-package smex
  :bind ("M-x" . smex)
  :config
  (setq smex-save-file (expand-file-name "smex-items" emacs-savefile-dir))
  :init
  (smex-initialize))

;; company mode setup
(use-package company
  :diminish company-mode
  :config
  (setq company-idle-delay 0.1)
  (setq company-minimum-prefix-length 1)
  (setq company-selection-wrap-around t)
  ;; stops company popup window changing width
  (setq company-tooltip-minimum-width 40)
  (add-hook 'after-init-hook 'global-company-mode))

(provide 'core-completion)

;;; core-completion.el ends here
