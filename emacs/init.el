(require 'package)

(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
	("gnu" . "https://elpa.gnu.org/packages/")))

(package-initialize)

;; Rust
(require 'rust-mode)
(require 'eglot)
(add-hook 'rust-mode-hook 'eglot-ensure)
(add-to-list 'eglot-server-programs
	     '((rust-st-mode rust-mode) .
	       ("rust-analyzer" :initializationOptions (:check (:command "clippy")))))

;; Go
(require 'go-mode)

;; YAML
(require 'yaml-mode)

;; Line Numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; Markdown
(require 'markdown-mode)

;; Generated
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(eglot go-mode lua-mode markup nginx-mode org python rust-mode
	   terraform-mode tex-item yaml-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
