;; Superdummy function to clean up a wiki page.
;; It removes the menu on the left and the navigation bar.
;;
;; TODO: don't remove the Wikipedia logo.

(defun cleanupwikipages ()
  "Clean up wiki pages."
  (interactive)
  (widen)
  (goto-char (point-min))
  (search-forward "NewPP" nil t)
  (search-forward "-->\n" nil t)
  (let ((beg (point))
	(end (save-excursion (and (re-search-forward "</body>" nil t)
				 (match-beginning 0)))))
    (delete-region beg end)))
  
  
