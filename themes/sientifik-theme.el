;;; sientifik-theme.el --- custom theme for Emacs

;; Copyright © 2020-2021 James McCabe

;; Author: James McCabe <jamesmccabe07(at)gmail.com>
;; Keywords: themes
;; Version 0.0.1

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
;; An experimental Emacs theme.

;;; Code:

(deftheme sientifik
  "Simple Emacs theme")

(let ((class '((class color) (min-colors 89)))
      ;; sientifik colors
      (sientifik-bg "#161825")
      (sientifik-fg "#ffffff")
      (sientifik-fringe "#252833")
      (sientifik-highlight "#131220")
      (sientifik-comment "#5e70a2")

      (sientifik-blue "#56a4ff")
      (sientifik-yellow "#ffaf3f")
      (sientifik-yellow2 "#ffbc05")
      (sientifik-orange "#cc4a0e")
      (sientifik-green "#25a399")
      (sientifik-green2 "#9dd637")
      (sientifik-red "#f72f33")
      (sientifik-magenta "#a644bf")
      (sientifik-purple "purple"))
  
  (custom-theme-set-faces
   'sientifik
   `(default ((,class (:foreground ,sientifik-fg :background ,sientifik-bg))))
   `(fringe ((,class (:background ,sientifik-fringe))))
   `(highlight ((,class (:background ,sientifik-highlight))))
   `(region ((,class (:foreground "black" :background ,sientifik-yellow))))
   ;; font lock faces
   `(font-lock-comment-face ((,class (:foreground ,sientifik-comment))))
   `(font-lock-string-face ((,class (:foreground ,sientifik-green2))))
   `(font-lock-builtin-face ((,class (:foreground ,sientifik-yellow2))))
   `(font-lock-keyword-face ((,class (:foreground ,sientifik-red :weight bold))))
   `(font-lock-function-name-face ((,class (:foreground ,sientifik-blue :weight bold))))
   
   ;; modeline settings
   `(mode-line-buffer-id ((,class (:foreground ,sientifik-yellow :weight bold))))
   `(mode-line ((,class (:foreground ,sientifik-fg :background ,sientifik-fringe
				     :box (:line-width 2 :style released-button)))))
   ; `(mode-line-inactive :foreground "grey20" :background "grey90" :box nil)

   ;; minibuffer settings
   `(minibuffer-prompt ((,class (:foreground ,sientifik-blue :weight bold))))

   ;; paren-mode
   `(show-paren-match ((,class (:background "turquoise"))))

   ;; isearch
   `(isearch ((,class (:foreground "white" :background "magenta"))))
   `(lazy-highlight ((,class (:background "turquoise"))))
   
   ;; ido mode setting
   `(ido-first-match ((,class (:foreground ,sientifik-red :weight bold))))
   `(ido-subdir ((,class (:foreground ,sientifik-yellow :weight bold))))
   `(ido-only-match ((,class (:foreground ,sientifik-green :weight bold))))

   ;; company mode settings
   `(company-tooltip ((,class (:foreground "white" :background "#252833"))))
   `(company-tooltip-selection ((,class (:background "#1b1e27"))))
   `(company-scrollbar-bg ((,class (:background ,sientifik-fringe))))
   `(company-scrollbar-fg ((,class (:background "#976638")))) 

   ;; display-line-numbers-mode
   `(line-number-current-line ((,class (:foreground "white" :background ,sientifik-highlight))))

   ;; org-mode
   `(org-document-title ((,class (:foreground ,sientifik-orange))))
   `(org-level-1 ((,class (:foreground ,sientifik-green))))
   `(org-level-2 ((,class (:foreground ,sientifik-yellow2))))
   `(org-level-3 ((,class (:foreground ,sientifik-red))))
   `(org-level-4 ((,class (:foreground ,sientifik-blue))))
   `(org-level-5 ((,class (:foreground ,sientifik-green2))))
   `(org-link ((,class (:foreground "#2fd1e3"))))

   ;; web mode
   `(web-mode-doctype-face ((,class (:foreground ,sientifik-red))))
   `(web-mode-html-tag-bracket-face ((,class (:foreground ,sientifik-fg))))
   `(web-mode-html-tag-face ((,class (:foreground ,sientifik-blue))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,sientifik-yellow))))
   
   ;; other settings
   
   ))

(provide-theme 'sientifik)

;;; sientifik-theme.el ends here
