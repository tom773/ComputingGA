LISP=sbcl --load

website:
	$(LISP) build.lisp --quit
