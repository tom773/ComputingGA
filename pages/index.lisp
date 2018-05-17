(build-page "pages/index.html"
	    (simple-page
	     (:title "news")
	     (navbar)
	     (header
	      (:h1 "A News Website"))
	     (container
	      (loop
		 for file in (directory "pages/*.lisp")
		 for relative = (format nil "~a.html" (first (last (split-sequence #\Slash (pathname-name file)))))
		 collect (htm (:p (:a :href relative (str relative))))))))
