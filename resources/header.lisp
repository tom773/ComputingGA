(with-open-file (links "resources/links.lisp" :direction :input)
  (defvar *links* (sort (read links) #'string< :key #'second)))

(with-open-file (navbar "resources/navbar.lisp" :direction :input)
  (defvar *navbar* (read navbar)))

(defmacro site-header ()
  '(progn
    (logo-header
     (:h1
      (:img :src "/images/logo.svg" :id "logo")
      "BitCONEEEEEEECT NEWS!"))
    (navbar
     (loop for (title url) in *navbar*
	 collect (htm (navbar-item (esc title) url))))))
