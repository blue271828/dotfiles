(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(use-package editorconfig
	     :ensure t)
(editorconfig-mode 1)


(define-key key-translation-map [?\C-h] [?\C-?])
(setq make-backup-files nil)
(setq auto-save-default nil)
