(build-page "pages/test.html"
	    (simple-page
		(:title "Hello")
	      (header
		(:h1 "Hello!")
		"This is a test page.")
	      (dropdown "Dropdown" "This" "is" -- "a"
			("dropdown" . "https://piv.pivpiv.dk/"))))
