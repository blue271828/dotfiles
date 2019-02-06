;; Base settings
(define-key key-translation-map [?\C-h] [?\C-?])
(setq make-backup-files nil)
(setq auto-save-default nil)


;; Add some package-archives
(require 'package)
(setq package-archives '(("melpa" . "http://melpa.org/packages/")))
(package-initialize)


;; Setup use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)


;; Setup editorconfig-mode
(unless (package-installed-p 'editorconfig)
  (package-refresh-contents)
  (package-install 'editorconfig))
(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))


;; Setup go-mode
(unless (package-installed-p 'go-mode)
  (package-refresh-contents)
  (package-install 'go-mode))


;; Setup yaml-mode
(unless (package-installed-p 'yaml-mode)
  (package-refresh-contents)
  (package-install 'yaml-mode))
