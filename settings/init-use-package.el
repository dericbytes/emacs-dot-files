;; This is only needed once, near the top of the file
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

(use-package yasnippet
    :config
  (setq yas-snippet-dirs (list
			  (expand-file-name "snippets" user-emacs-directory)))

  (yas-global-mode 1)
  (define-key yas-keymap (kbd "M-d")
    (yas-filtered-definition yas-maybe-skip-and-clear-field)))

(use-package avy
    :config
  (setq avy-highlight-first t)
  (setq avy-style 'at-full)
  (setq avy-keys '(?a ?u ?i ?e ?y ?x ?o ?w ?b ?n ?f ?p ?k ?t ?s ?r ?q ?d ?l ?j ?m ?c ?g ?h
		   ?, ?.  ?- ?[ ?] ?\? ?\
		   ?2 ?3 ?4 ?5 ?6 ?7 ?8 ?9 ?0
		   ))

  (defun ta-avy-goto-end-of-line ()
    "Call `avy-goto-char' with \"\n\" as argument."
    (interactive)
    (avy-goto-char ?\n)))

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

(provide 'init-use-package)
