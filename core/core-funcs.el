;;; core-funcs.el - Extra functions for Emacs

;; create new scratch buffers
(defun create-scratch-elisp-buffer ()
  "Create a new Emacs Lisp scratch buffer"
  (interactive)
  (progn
    (switch-to-buffer
     (get-buffer-create (generate-new-buffer-name "*scratch*")))
    (emacs-lisp-mode)
    (insert initial-scratch-message)))

(defun create-scratch-lisp-buffer ()
  "Create a new Common Lisp scratch buffer"
  (interactive)
  (progn
    (switch-to-buffer
     (get-buffer-create (generate-new-buffer-name "*scratch*")))
    (lisp-mode)
    (insert initial-scratch-message)))

(defun create-scratch-org-buffer ()
  "Create a new Org-mode scratch buffer"
  (interactive)
  (progn
    (switch-to-buffer
     (get-buffer-create (generate-new-buffer-name "*scratch-org*")))
    (org-mode)))

(defun create-scratch-tex-buffer ()
  "Create a new LaTeX-mode scratch buffer"
  (interactive)
  (progn
    (switch-to-buffer
     (get-buffer-create (generate-new-buffer-name "*scratch-tex*")))
    (latex-mode)))

;; move current line up or down
(defun move-line-up ()
  "Move up the current line"
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down ()
  "Move down the current line"
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

;; Toggles
(defvar toggle-numbers-p nil) ; turned off by default
(defun toggle-numbers ()
  "Toggle on/off numbers"
  (interactive)
  (if toggle-numbers-p
      (progn
        (global-display-line-numbers-mode 0)
        (setq toggle-numbers-p nil))
    (progn
      (global-display-line-numbers-mode 1)
      (setq toggle-numbers-p t))))

(defvar fringe-mode-p t) ;turned on by default
(defun toggle-fringe ()
  "Toggle on/off fringe mode"
  (interactive)
  (if fringe-mode-p
      (progn
        (fringe-mode (cons 0 0))
        (setq fringe-mode-p nil))
    (progn
      (fringe-mode (cons 8 8))
      (setq fringe-mode-p t))))

(provide 'core-funcs)

;;; core-funcs.el ends here
