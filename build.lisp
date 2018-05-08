(ql:quickload 'cl-who)
(setf (cl-who:html-mode) :html5)

(defpackage html-build
  (:use :cl :cl-who))
(in-package :html-build)
(use-package '(cl-who))

(load "macros/bootstrap.lisp")
(load "macros/disqus.lisp")

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

(load "pages/test.lisp")
