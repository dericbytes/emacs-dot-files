(require 'evil)
;; activate evil mode
(evil-mode 1)

;; jk escape key
(require 'evil-escape)
(setq-default evil-escape-key-sequence "jk")
(setq evil-escape-delay 0.20)
(evil-escape-mode)


(setq evil-visual-state-message "")
(setq evil-insert-state-message "")
(setq evil-visual-block-message "B")


(setq evil-visual-state-tag "")
(setq evil-insert-state-tag "")
(setq evil-emacs-state-tag "")
(setq evil-normal-state-cursor '(box "orange"))
(setq evil-emacs-state-cursor '((bar . 3) "magenta")) 
(setq evil-insert-state-cursor '((bar . 3) "magenta")) 

(require 'init-evil-nerd-commenter)

(provide 'evil-module)
