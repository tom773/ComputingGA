(build-page "pages/index.html"
	    (simple-page
	     (:title "news")
	     (navbar)
	     (header
	      (:h1 :class "fancy" "A News Website"))
	     (navbar
	       (with-open-file (links "resources/links.lisp" :direction :input)
		 (loop for (title url) in (read links)
		    do (htm (navbar-item (esc title) url)))))
	     (container
	      (columns
	       (column 1/2
		       (:h2 "Burning Down The House")
		       (with-open-file (burning "resources/house.txt" :direction :input)
			 (loop for line = (read-line burning nil nil)
			    while line
			    do (htm (esc line)
				    (:br)))))
	       (column 1/2
		       (:h2 "Listen, Marxist!")
		       (with-open-file (burning "resources/listen.txt" :direction :input)
			 (loop for line = (read-line burning nil nil)
			    while line
			    do (htm (esc line)
				    (:br)))))))))
