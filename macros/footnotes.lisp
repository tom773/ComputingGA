(defvar *footnotes* nil)

(defmacro footnote (&body text)
  (push text *footnotes*)
  `(htm
    (:sup 
     (:a :href ,(format nil "#f~a" (length *footnotes*)) :class "marker"
	 (str ,(format nil "[~a]" (length *footnotes*)))))))

(defmacro footnote-collector ()
  (let ((fnotes *footnotes*))
    (setf *footnotes* nil)
    (cons 'htm
	  (loop
	     for footnote in fnotes
	     for n from 1
	     collect
	       `(:sup :id ,(format nil "f~a" n)
		      :class "footnote"
		      (str (format nil "note #~a:" ,n))
		      ,@footnote)))))
