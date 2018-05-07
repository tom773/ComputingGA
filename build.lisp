(ql:quickload 'cl-who)
(setf (cl-who:html-mode) :html5)

(defpackage html-build
  (:use :cl :cl-who))
(in-package :html-build)
(use-package '(cl-who))

(load "bootstrap.lisp")

(defmacro build-page (name &body page)
  `(progn
     (format t ,(concatenate 'string "Making " name "...~%"))
     (with-open-file (fd ,name :direction :output :if-exists :supersede)
       (with-html-output (fd nil :prologue t :indent t)
	 ,@page))
     (format t ,(concatenate 'string "Made " name "~%"))))

(load "pages/test.lisp")
