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

(provide 'figlet-utils)
