(setq user-init-file "/home/dericbytes/wd/emacs-dot-files/init.el")
(setq user-emacs-directory "/home/dericbytes/wd/emacs-dot-files/")

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(add-to-list 'load-path "./settings")
(require 'init-general)

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
