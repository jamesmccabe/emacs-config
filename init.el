;;; init.el --- My personal Emacs config for Emacs 26.3

;; Copyright (C) 2020-2023 James McCabe

;; Author: James McCabe <james.mccab3(at)gmail.com>
;; URL: https://github.com/jamesmccabe/emacs-config
;; Keywords: .emacs.d

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;; A simple Emacs configuration for elisp, common lisp, html, css, latex.


;;; Code:

;; set window size of emacs on startup
(when (display-graphic-p)
  (setq default-frame-alist
	'((width . 100) (height . 40))))

;; turn off toolbar, menubar and scrollbar early
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; setup where emacs searches for .el file
(add-to-list 'load-path
	     (expand-file-name "core" user-emacs-directory))

(add-to-list 'load-path
	     (expand-file-name "modules" user-emacs-directory))

;; load config
(require 'core)

;; display startup time in message area
(defun display-startup-echo-area-message ()
  (message "GNU Emacs started in %s. For more information, type C-h C-a."
	   (emacs-init-time)))

;;; init.el ends here
