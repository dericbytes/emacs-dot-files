(require 'evil-nerd-commenter)

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
    (define-key evil-visual-state-map "gco" 'evilnc-comment-operator)))

(provide 'init-evil-nerd-commenter)
