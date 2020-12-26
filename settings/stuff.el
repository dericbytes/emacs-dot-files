(defun switch-to-messages-buffer-dem ()
  (interactive)
  (switch-to-buffer "*Messages*"))

(defun switch-to-backtrace-buffer-dem ()
  (interactive)
  (switch-to-buffer "*Backtrace*"))

(defun switch-to-completions-buffer-dem ()
  (interactive)
  (switch-to-buffer "*Completions*"))

(defun switch-to-help-buffer-dem ()
  (interactive)
  (switch-to-buffer "*Help*"))

(defun switch-to-scratch-buffer-dem ()
  (interactive)
  (switch-to-buffer "*scratch*"))

(defun switch-to-shell-buffer-dem ()
  (interactive)
  (if (get-buffer "*shell*")
      (switch-to-buffer "*shell*")
    (shell)))

;;- figlet
;;------------------------------------------------------------------

(defun figlet-insert-dem (&optional arg-str)
  (interactive)
  (let ((cmd-name "figlet")
	(prompt "figlet: ")
	(error-no-font-msg "Unable to open font file")
	(generated-text ""))
    (unless arg-str
      (setq arg-str (read-string prompt)))
    (when (and (stringp arg-str)
	       (not (string-equal arg-str "")))
      (setq generated-text (shell-command-to-string
			    (format "%s %s" cmd-name arg-str)))
      (unless (string-match error-no-font-msg generated-text)
	(insert generated-text)))))

(defun figlet-insert-falla-dem ()
  ""
  (interactive)
  (figlet-insert-dem "-f big -r -w 80 Falla Conmigo"))

;;- relaunch emacs
;;------------------------------------------------------------------

(setq relaunch-emacs-command "emacs -nw")
(setq relaunch-emacs-screencast-command "emacs -nw -q -l ~/wd/emacs-dot-files/init-screencast.el")
(setq relaunch-emacs-command relaunch-emacs-screencast-command)

(defun launch-separate-emacs-in-terminal ()
  (suspend-emacs (format "fg ; %s" relaunch-emacs-command)))

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

;;- secrets
;;------------------------------------------------------------------
(defun load-my-secret ()
  (message "function load-my-secret ran.")

  (load my-secret-file ))



(provide 'stuff)
