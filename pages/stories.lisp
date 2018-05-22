(build-page "pages/stories.html"
	    (simple-page
	     (:title "news")
	     (site-header)
	     (container
	       (:ul :class "list-group"
		(loop for (title url desc) in *links*
		   when desc
		   do (htm (:li :class "list-group-item"
			    (:h2 (:a :href url (esc title)))
			    (esc desc))))))))
