(eval-when-compile
  (require 'use-package))

(use-package ace-window)

(use-package yasnippet-snippets
    :after yasnippet)

(use-package yasnippet
    :config
  (add-to-list 'yas-snippet-dirs 
	       (expand-file-name "snippets" user-emacs-directory))

  (yas-global-mode 1)
  (define-key yas-keymap (kbd "M-d")
    (yas-filtered-definition yas-maybe-skip-and-clear-field)))

(use-package avy
    :config
  ;; (setq avy-highlight-first t)
  (setq avy-style 'at)
  ;; put easy to press keys first
  (setq avy-keys (listify-key-sequence "jfkdlsaurieowqphgytmvcxz83429")))

(use-package window-numbering
    :config
  (winner-mode t)
  (window-numbering-mode 1)
  (setq window-numbering-auto-assign-0-to-minibuffer t))

;; it is no secret emacs - creation
(use-package epa-file
    :config
  (epa-file-enable)

  (setq my-secret-file (expand-file-name "secret.el.gpg" user-emacs-directory))

  (add-hook 'emacs-startup-hook 'load-my-secret))


(use-package flycheck
    :config
  (global-flycheck-mode t))


(use-package notifications)

(provide 'init-use-package)
