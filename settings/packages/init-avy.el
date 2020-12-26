(require 'avy)

(setq avy-highlight-first t)
(setq avy-style 'at-full)
(setq avy-keys '(97 117 105 101 121 120 111 119 98 110 102 112 107 116 115
                 114 113 100 108 106 109 99 103 104 40 41 91 93 60 62 44
                 59 46 58))

(defun ta-avy-goto-end-of-line ()
  "Call `avy-goto-char' with \"\n\" as argument."
  (interactive)
  (avy-goto-char ?\n))

(global-set-key (kbd "M-)") 'ta-avy-goto-end-of-line)
(global-set-key (kbd "M-(") 'avy-goto-line)
(global-set-key (kbd "<down>") 'avy-goto-char)

(provide 'init-avy)
