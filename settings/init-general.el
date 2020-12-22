(set-face-background 'region "bisque")

;; set this in frame-properties - otherwise tool-bar-mode slows
;; startup by 1 sec
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(setq byte-compile-warnings nil)
;; max messages dispalyed in messges buffer
(setq message-log-max 16384)


;; A second, case-insensitive pass over `auto-mode-alist' is time wasted, and
;; indicates misconfiguration (or that the user needs to stop relying on case
;; insensitivity).
(setq auto-mode-case-fold nil)

(setq inhibit-startup-echo-area-message " ")

;; Get rid of "For information about GNU Emacs..." message at startup, unless
;; we're in a daemon session where it'll say "Starting Emacs daemon." instead,
;; which isn't so bad.
(unless (daemonp)
  (advice-add #'display-startup-echo-area-message :override #'ignore))

(setq inhibit-default-init t)
      ;; Shave seconds off startup time by starting the scratch buffer in
      ;; `fundamental-mode', rather than, say, `org-mode' or `text-mode', which
      ;; pull in a ton of packages.
(setq initial-major-mode 'fundamental-mode)

;; Just say no to splash screens
(setq inhibit-startup-message t)

;; and that scratch mesage
(setq initial-scratch-message "")

;; doesn't beep - desplays what is wrong in minibuffer
(setq visible-bell t)

;; kill/copy/paste/yank
;; ~/emacs-config/dem/setup-dem/init-copy-and-paste.el

;; NOTE: turned off as too easy to delete by accident
;; delete region or replace when marked
;; (delete-selection-mode)

;; Silence ad-handle-definition about advised functions getting redefined.
(setq ad-redefinition-action 'accept)


;; Send deleted files to windows recycle bin
;; (setq delete-by-moving-to-trash nil)

;;Resize mini buffer to fit text displayed in them
(setq resize-mini-windows t)

(setq use-dialog-box nil)

;; undo disabling of commands that are confusing to beginners
;;i.e. narrow-to-region, erase-buffer, downcase-region
(setq disabled-command-function nil)
;; (put 'narrow-to-region 'disabled nil)
;; (put 'erase-buffer 'disabled nil)
;; (put 'downcase-region 'disabled nil)

(setq apropos-do-all t)


;; display filename on icon/tab when emacs is minimized
(setq icon-title-format " ☣ Ed  %b")

;;Display files full path in title bar
(setq frame-title-format " ☣ Ed  %f")

;;doesn't beep - desplays what is wrong in minibuffer
(setq visible-bell t)

;; Transparently open compressed files
(auto-compression-mode t)

(random t) ;; Seed the random-number generator

;; don't have to click window to give it focus
(setq mouse-autoselect-window 0.1)

;; show keys you are pressing straight away in minibuffer
(setq echo-keystrokes 0.1)

;; length of line
(setq fill-column 120)

;; lines - don't break them for me
(setq-default truncate-lines nil)

;; sentences end with a single space. 
;; need for navigation and selecting by sentences
(setq sentence-end-double-space nil)

;; (mouse-avoidance-mode 'none)

;; remove warning when killing buffer with processes atatched
(remove-hook 'kill-buffer-query-functions 'process-kill-buffer-query-function)

;; default mode for new buffer
(setq-default major-mode 'org-mode)

;; garbage collection (gc) threshold & percentage
;; ~/emacs-config/dem/setup-dem/init-bootup-performance.el

;; get rid of yes-or-no questions - y or n is enough
(defalias 'yes-or-no-p 'y-or-n-p) 

;; remember last N key presses
(lossage-size 3000)

(provide 'init-general)
