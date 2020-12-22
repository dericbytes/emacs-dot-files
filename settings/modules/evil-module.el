;; activate evil mode
(evil-mode 1)

;; jk escape key
(require 'evil-escape)
(setq-default evil-escape-key-sequence "jk")
(setq evil-escape-delay 0.20)
(evil-escape-mode)

(provide 'evil-module)
