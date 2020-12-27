(use-package evil
    :config
  ;; activate evil mode
  (evil-mode 1)

  ;; jk escape key
  ;; (require 'evil-escape)
  ;; (setq-default evil-escape-key-sequence "jk")
  ;; (setq evil-escape-delay 0.20)
  ;; (evil-escape-mode)


  (setq evil-visual-state-message "")
  (setq evil-insert-state-message "")
  (setq evil-visual-block-message "B")

  (setq evil-visual-state-tag "")
  (setq evil-insert-state-tag "")
  (setq evil-emacs-state-tag "")
  (setq evil-normal-state-cursor '(box "orange"))
  (setq evil-emacs-state-cursor '((bar . 3) "magenta")) 
  (setq evil-insert-state-cursor '((bar . 3) "magenta")))



(use-package evil-nerd-commenter
    :config

  ;; Install key bindings for evil
  (when (fboundp 'evil-mode) 
    (define-key evil-normal-state-map "gcl" 'evilnc-comment-or-uncomment-lines)
    (define-key evil-normal-state-map "gcj" 'evilnc-quick-comment-or-uncomment-to-the-line)
    (define-key evil-normal-state-map "gcal" 'evilnc-copy-and-comment-lines)
    (define-key evil-normal-state-map "gco" 'evilnc-comment-operator)
    (define-key evil-normal-state-map "gcao" 'evilnc-copy-and-comment-operator)
    (define-key evil-normal-state-map "gcp" 'evilnc-comment-or-uncomment-paragraphs)
    (define-key evil-normal-state-map "gcr" 'comment-or-uncomment-region)
    (define-key evil-normal-state-map "gcao" 'evilnc-copy-and-comment-operator)
    (define-key evil-normal-state-map "gct" 'evilnc-comment-or-uncomment-html-tag)
    (define-key evil-normal-state-map "gci" 'evilnc-toggle-invert-comment-line-by-line)

    (define-key evil-visual-state-map "gci" 'evilnc-comment-or-uncomment-lines)
    (define-key evil-visual-state-map "gcc" 'evilnc-copy-and-comment-lines)

    (when evilnc-use-comment-object-setup
      ;; Install operator for evil text objects
      (define-key evil-normal-state-map "gcao" 'evilnc-copy-and-comment-operator)
      (define-key evil-normal-state-map "gco" 'evilnc-comment-operator)
      
      (define-key evil-visual-state-map "gcao" 'evilnc-copy-and-comment-operator)
      (define-key evil-visual-state-map "gco" 'evilnc-comment-operator))))




(provide 'evil-module)
