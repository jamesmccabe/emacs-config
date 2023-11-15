;;; core.el --- Loads core components

;; load core .el files
(require 'core-package-setup)
(require 'core-backup-init)
(require 'core-ui)
(require 'core-settings)
(require 'core-completion)
(require 'core-utils)
(require 'core-funcs)
(require 'core-keys)

;; load module .el files
(require 'init-latex)
(require 'init-lisp)
(require 'init-magit)
(require 'init-markdown)
(require 'init-org)
(require 'init-scripting)
(require 'init-webdevel)
(require 'init-yaml)
(require 'init-yasnippet)

(provide 'core)

;;; core.el ends here
