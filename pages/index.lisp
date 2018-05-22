(build-page "pages/index.html"
	    (simple-page
	     (:title "news")
	     (site-header)
	     (container
	      (columns
	       (loop for (title url desc) in *links*
		  when desc
		  do (column 1/2
		      (:h2 (:a :href url (esc title)))
		      (esc desc)))))))
