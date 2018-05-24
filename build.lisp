(ql:quickload '(cl-who split-sequence))
(setf (cl-who:html-mode) :html5)

(defpackage html-build
  (:use :cl :cl-who :split-sequence))
(in-package :html-build)
(use-package '(cl-who))

(load "macros/bootstrap.lisp")
(load "macros/disqus.lisp")
(load "macros/footnotes.lisp")
(load "macros/header.lisp")

(defmacro build-page (name &body page)
  `(progn
     (format t ,(concatenate 'string "Making " name "...~%"))
     (handler-case
	 (with-open-file (fd ,name :direction :output :if-exists :supersede)
	   (with-html-output (fd nil :prologue t :indent t)
	     ,@page))
       (condition (condition)
	 (format t "~a errored out with ~a:~%" ,name condition)
	 (print (sb-debug:list-backtrace)))
       (:no-error (meh)
	 (declare (ignore meh))
	 (format t ,(concatenate 'string "Made " name "~%"))))))

;; Files to build go here.

(load "pages/stories.lisp")
(load "pages/index.lisp")
(load "pages/mtgox.lisp")
(load "pages/ethereum.lisp")
(load "pages/ecc.lisp")
