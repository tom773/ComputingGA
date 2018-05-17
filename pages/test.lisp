(build-page "pages/test.html"
	    (simple-page
	     (:title "Hello")
	     (navbar
	      (navbar-brand "Foobar Co." "http://purple.com")
	      (navbar-item  "Home" "http://netfarm.gq")
	      (navbar-item  "Best editor" "https://www.gnu.org/software/emacs/")
	      (primary-dropdown "Seize" -- "the" -- "means" -- "of" -- "production"))
	     (header
	      (:h1 "Hello!")
	      "This is a test page.")
	     (container
	      (image
	       "images/david.jpg"
	       "33%"
	       "Byrneing down the house."
	       (:em "Nothing But Flowers"))
	      (:div :style "float: right;"
	       (:ul
		(:li "Wix is for plebs")
		(:li "This doesn't have enough brackets.")
		(:li "XML has a case of"
		     (:a :href "https://en.wikipedia.org/wiki/Not_invented_here" "NIH syndrome.")
		     (:a :href "https://en.wikipedia.org/wiki/S-expression" "S-expressions")
		     "are objectively better.")))
	      (comment-box))))
