;;; core-backup-init.el --- how Emacs handles backups and save files

;; set up backup directory name and location
(defconst emacs-savefile-dir
  (expand-file-name ".emacs-backups" user-emacs-directory))

;; create backup directory after initialization (only if it doesn't exist)
(defun make-backup-folder ()
  (unless (file-exists-p emacs-savefile-dir)
    (make-directory emacs-savefile-dir)))

(add-hook 'emacs-startup-hook #'make-backup-folder)

;; save autosave and backup files to hidden emacs-backups directory
(setq backup-directory-alist
      `((".*" . , "~/.emacs.d/.emacs-backups")))
(setq auto-save-file-name-transforms
      `((".*" , "~/.emacs.d/.emacs-backups" t)))

;; keep your garbage out of my init file on first startup!
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

;; because emacs-savefile-dir is not created immediately in my config,
;; it is delayed for optimization, we need to change location after
;; initialization. I also delete any custom.el files from my Emacs dir
(defun change-customize-location ()
  (setq custom-file (expand-file-name "custom.el" emacs-savefile-dir))
  (when (file-exists-p (expand-file-name "custom.el" user-emacs-directory))
    (delete-file (expand-file-name "custom.el" user-emacs-directory))))

(add-hook 'emacs-startup-hook #'change-customize-location)

(provide 'core-backup-init)

;;; core-backup-init.el ends here
