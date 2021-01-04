;; tabs and ribbons on mode line
(use-package moody
    :config
  (setq x-underline-at-descent-line t)

  (setq moody-mode-line-height 30)

  (defun set-moody-face (frame)
    (let ((line (face-attribute 'mode-line :underline frame)))
      (set-face-attribute 'mode-line          frame :overline   line)
      (set-face-attribute 'mode-line-inactive frame :overline   line)
      (set-face-attribute 'mode-line-inactive frame :underline  line)
      (set-face-attribute 'mode-line          frame :box        nil)
      (set-face-attribute 'mode-line-inactive frame :box        nil)))

  (add-to-list 'after-make-frame-functions 'set-moody-face t))


;; toggle active mode menu
(use-package minions
    :config
  (setq minions-direct '(insight-mode))
  (setq minions-mode-line-lighter "")
  (setq minions-mode-line-delimiters '("" . "")))


(setq-default mode-line-format
      '("%e"
	mode-line-front-space
	mode-line-mule-info
	mode-line-client
	mode-line-modified
	mode-line-remote
	mode-line-frame-identification
	moody-mode-line-buffer-identification
	"   "
	mode-line-position
	(vc-mode moody-vc-mode)
	"  "
	minions-mode-line-modes
	mode-line-misc-info
	mode-line-end-spaces))

(provide 'mode-line-module)
