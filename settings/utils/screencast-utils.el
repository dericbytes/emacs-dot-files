
(defun screencast ()
  ""
  (interactive)

  (defun set-mode-line-falla-conmigo ()
    (setq mode-line-format "   falla conmigo screencast  "))

  (add-hook 'after-change-major-mode-hook 'set-mode-line-falla-conmigo)

  (find-file "~/wd/falla-conmigo/screencasts/c/1/my-prog1.c")
  (forward-line 4)
  (set-window-margins nil 10 0))

(provide 'screencast-utils)
