(build-page "pages/index.html"
	    (simple-page
	     (:title "news")
	     (site-header)
	     (container
	      (columns
	       (loop for (title url desc image) in *links*
		  when desc
		  do (column 1/2
			     (:a :href url (:img :src image :class "story-image" :width "100%"))
			     (:h2 (:a :href url (esc title)))
			     (esc desc)))))))
