(setq user-emacs-directory "/home/dericbytes/wd/emacs-dot-files/")
(setq user-init-file (expand-file-name "/init.el" user-emacs-directory))

(add-to-list 'load-path (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "./settings/modules" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "./settings/overwrite" user-emacs-directory))

(require 'init-general)
(savehist-mode) ;; save command line history + more
(recentf-mode) 
(global-auto-revert-mode t) ;; reload file if changed on disk 

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'init-use-package)
(require 'mode-line-module)
(require 'evil-module)
(require 'window-module)

(require 'overwrite-read-extended-command-change-Mx)
(require 'stuff)

;; enable color emojis
(set-fontset-font t 'symbol "Noto Color Emoji" nil 'append)

(setq custom-file (expand-file-name  "settings/.emacs-custom.el" user-emacs-directory))
(load custom-file)

