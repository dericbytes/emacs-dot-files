(setq user-emacs-directory "/home/dericbytes/wd/emacs-dot-files/")
(setq user-init-file (expand-file-name "/init.el" user-emacs-directory))

(add-to-list 'load-path (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "./settings/modules" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "./settings/packages" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "./settings/overwrite" user-emacs-directory))

(require 'init-general)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'mode-line-module)
(require 'evil-module)

(require 'init-yasnippet)
(require 'window-module)

(require 'overwrite-read-extended-command-change-Mx)
(require 'stuff)
;; enable color emojis
(set-fontset-font t 'symbol "Noto Color Emoji" nil 'append)

(add-to-list 'display-buffer-alist
	     '("*shell*"
	       (display-buffer-same-window)))

;; it is no secret emacs 
(require 'epa-file)
(epa-file-enable)

(setq my-secret-file (expand-file-name "secret.el.gpg" user-emacs-directory))

(add-hook 'emacs-startup-hook 'load-my-secret)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(ansi package-build shut-up epl git commander f dash s)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
