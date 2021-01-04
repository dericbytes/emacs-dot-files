(setq inhibit-message t)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; reload files if changed on disk
(global-auto-revert-mode t)

(fset 'display-startup-echo-area-message 'ignore)
(advice-add #'display-startup-echo-area-message :override #'ignore)

(setq inhibit-startup-screen t)

;; 0 - turn off - echo keys pressed for unfinished commands
(setq echo-keystrokes 0) 

(setq user-emacs-directory "/home/dericbytes/wd/emacs-dot-files/")
(load-file (expand-file-name "init.el" user-emacs-directory))

(add-to-list 'load-path "~/emacs-config/dem/utils-dem/")
(add-to-list 'load-path "~/emacs-config/dem/libs-dem/")

(require 'slides-show-dem)
(require 'org-hide-src-block-delimiters-mode)
(require 'compilation-ovl-hide-mode)
(compilation-ovl-hide)


;; allow long lines
(toggle-truncate-lines 1)

;; margin in all windows
(progn
  (setq-default left-margin-width 10)
  ;; Use them now.
  (set-window-buffer nil (current-buffer)))

(defun set-mode-line-falla-conmigo ()
  (when custom1-mode-line 
    (cond
      ((comint-check-proc (current-buffer))
       (setq mode-line-format " Shell "))
      ((eq major-mode 'dired-mode)
       (setq mode-line-format " File Manager "))
      (t
       (setq mode-line-format " Falla Conmigo")  ))
    (force-mode-line-update)))

(add-hook 'after-change-major-mode-hook 'set-mode-line-falla-conmigo)


(slides-start-show--falla-conmigo-slideN)

(setq org-confirm-babel-evaluate nil)


(setq compile-command "")
