(defun read-extended-command ()
     "Read command name to invoke in `execute-extended-command'."
     (let ((minibuffer-M-x-prompt " "))
       (minibuffer-with-setup-hook
	   (lambda ()
	     (add-hook 'post-self-insert-hook
		       (lambda ()
			 (setq execute-extended-command--last-typed
			       (minibuffer-contents)))
		       nil 'local)
	     (set (make-local-variable 'minibuffer-default-add-function)
		  (lambda ()
		    ;; Get a command name at point in the original buffer
		    ;; to propose it after M-n.
		    (let ((def (with-current-buffer
				   (window-buffer (minibuffer-selected-window))
				 (and (commandp (function-called-at-point))
				      (format "%S" (function-called-at-point)))))
			  (all (sort (minibuffer-default-add-completions)
				     #'string<)))
		      (if def
			  (cons def (delete def all))
			all)))))
	 ;; Read a string, completing from and restricting to the set of
	 ;; all defined commands.  Don't provide any initial input.
	 ;; Save the command read on the extended-command history list.
	 (completing-read
	  (concat (cond
		    ((eq current-prefix-arg '-) "- ")
		    ((and (consp current-prefix-arg)
			  (eq (car current-prefix-arg) 4)) "C-u ")
		    ((and (consp current-prefix-arg)
			  (integerp (car current-prefix-arg)))
		     (format "%d " (car current-prefix-arg)))
		    ((integerp current-prefix-arg)
		     (format "%d " current-prefix-arg)))
		  ;; This isn't strictly correct if `execute-extended-command'
		  ;; is bound to anything else (e.g. [menu]).
		  ;; It could use (key-description (this-single-command-keys)),
		  ;; but actually a prompt other than "M-x" would be confusing,
		  ;; because "M-x" is a well-known prompt to read a command
		  ;; and it serves as a shorthand for "Extended command: ".
		  minibuffer-M-x-prompt)
	  (lambda (string pred action)
	    (if (and suggest-key-bindings (eq action 'metadata))
		'(metadata
		  (annotation-function . read-extended-command--annotation)
		  (category . command))
	      (complete-with-action action obarray string pred)))
	  #'commandp t nil 'extended-command-history))))

(provide 'overwrite-read-extended-command-change-Mx)
