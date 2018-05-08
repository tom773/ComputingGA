ifneq ("$(wildcard sbcl)","")
LISP=./sbcl
else
LISP=sbcl
endif

website:
	$(LISP) --load build.lisp --quit
