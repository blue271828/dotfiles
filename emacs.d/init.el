;; Proxy setting
(cond ((getenv "HTTP_PROXY")
       (let* ((url_ (url-generic-parse-url (getenv "HTTP_PROXY")))
              (auth_ (if (and (url-user url_) (url-password url_) )
                         (base64-encode-string
                          (format "%s:%s" (url-user url_) (url-password url_)))
                       nil))
              (host_ (format "%s:%s" (url-host url_) (url-portspec url_))))

         (defvar url-proxy-services
               (list (cons "no_proxy"  "^\\(localhost\\|10.*\\)")
                     (cons "http" host_)))
         (if auth_
             (defvar url-http-proxy-basic-auth-storage
               (list (list host_ (cons "Proxy" auth_)))))
         )))


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
