(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(fset 'display-startup-echo-area-message 'ignore)
(setq inhibit-startup-screen t)
;; (eval '(setq inhibit-startup-echo-area-message "Deric Bytes"))

;; (defun display-startup-echo-area-message ()
;;   (message "Let the hacking begin!"))



;; (advice-add #'display-startup-echo-area-message :override #'ignore)
;; (find-file "~/tmp/test.c")
;; ;; (advice-add #'display-startup-echo-area-message :override #'ignore)
;; (defun display-startup-echo-area-message ()
;;   (message "hi"))

(setq echo-keystrokes 0) 
(setq inhibit-message t)

(setq user-emacs-directory "/home/dericbytes/wd/emacs-dot-files/")
(load-file (expand-file-name "init.el" user-emacs-directory))
(setq SCREENCAST t)

(require 'screencast-utils)
(screencast)
(message "")

