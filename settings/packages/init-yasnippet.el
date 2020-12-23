(require 'yasnippet)
(setq yas-snippet-dirs (list
			(expand-file-name "snippets" user-emacs-directory)))

(yas-global-mode 1)
(define-key yas-keymap (kbd "M-d")
  (yas-filtered-definition yas-maybe-skip-and-clear-field))

(provide 'init-yasnippet)
