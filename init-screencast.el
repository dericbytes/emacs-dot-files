(setq inhibit-message t)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(fset 'display-startup-echo-area-message 'ignore)
(advice-add #'display-startup-echo-area-message :override #'ignore)

(setq inhibit-startup-screen t)

;; 0 - turn off - echo keys pressed for unfinished commands
(setq echo-keystrokes 0) 

(setq user-emacs-directory "/home/dericbytes/wd/emacs-dot-files/")
(load-file (expand-file-name "init.el" user-emacs-directory))

(add-to-list 'load-path "~/emacs-config/dem/utils-dem/")
(require 'slide-show-dem)

;; allow long lines
(toggle-truncate-lines 1)

;; margin in all windows
(progn
  (setq-default left-margin-width 10)
  ;; Use them now.
  (set-window-buffer nil (current-buffer)))


(slides-start-show--falla-conmigo-pageN)

