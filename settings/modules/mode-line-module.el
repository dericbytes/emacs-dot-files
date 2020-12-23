
;;- tabs and ribbons on mode line
;;------------------------------------------------------------------

(require 'moody)
(setq x-underline-at-descent-line t)

(setq moody-mode-line-height 30)

(defun set-moody-face (frame)
  (let ((line (face-attribute 'mode-line :underline frame)))
    (set-face-attribute 'mode-line          frame :overline   line)
    (set-face-attribute 'mode-line-inactive frame :overline   line)
    (set-face-attribute 'mode-line-inactive frame :underline  line)
    (set-face-attribute 'mode-line          frame :box        nil)
    (set-face-attribute 'mode-line-inactive frame :box        nil)))

(add-to-list 'after-make-frame-functions 'set-moody-face t)


;;- toggle active mode menu
;;------------------------------------------------------------------

(setq minions-direct '(insight-mode))
(setq minions-mode-line-lighter "")
(setq minions-mode-line-delimiters '("" . ""))


;;------------------------------------------------------------------

(setq mode-line-format
	      '("%e"
		mode-line-front-space
		mode-line-mule-info
		mode-line-client
		mode-line-modified
		mode-line-remote
		mode-line-frame-identification
		moody-mode-line-buffer-identification
		"   "
		(:eval (format "NL%s" (ta-number-of-lines-mode)))
		" "
		mode-line-position
		(vc-mode moody-vc-mode)
		"  "
		minions-mode-line-modes
		mode-line-misc-info
		mode-line-end-spaces))

(provide 'mode-line-module)
