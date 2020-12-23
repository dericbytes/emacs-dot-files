
(defun launch-separate-emacs-screencast-in-terminal ()
  (suspend-emacs "fg ; emacs -nw -q -l ~/wd/emacs-dot-files/init.el"))

(defun launch-separate-emacs-in-terminal ()
  (launch-separate-emacs-screencast-in-terminal)
  ;; (suspend-emacs "fg ; emacs -nw")
  )

(defun launch-separate-emacs-under-x ()
  (call-process "sh" nil nil nil "-c" "emacs &"))

(defun restart-emacs ()
  (interactive)
  ;; We need the new emacs to be spawned after all kill-emacs-hooks
  ;; have been processed and there is nothing interesting left
  (let ((kill-emacs-hook (append kill-emacs-hook (list (if (display-graphic-p)
                                                           #'launch-separate-emacs-under-x
                                                         #'launch-separate-emacs-in-terminal)))))
    (save-buffers-kill-emacs)))


(provide 'restart-emacs-utils)
