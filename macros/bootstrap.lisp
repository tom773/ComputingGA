(in-package :html-build)
	    
(defmacro simple-page ((&key title
			     head-stuff
			     (language "en"))
		       &body body)
  `(htm (:html :language ,language
	       (:head
		(:title ,title)
		(:link :rel "stylesheet"
		       :href "https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		       :crossorigin "anonymous")
		(:script :src "https://code.jquery.com/jquery-3.3.1.slim.min.js"
			 :crossorigin "anonymous")
		(:script :src "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
			 :crossorigin "anonymous")
		(:script
		 :src "https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
		 :crossorigin "anonymous")
		,@head-stuff)
	       (:body
		,@body))))

(defmacro header (&body body)
  `(htm (:div :class "jumbotron text-center"
	      ,@body)))

(defmacro container (&body body)
  `(htm (:div :class "container"
	      ,@body)))

(defmacro dropdown (label &rest options)
  `(htm
    (:div :class "dropdown"
	  (:button :type "button"
		   :class "btn dropdown-toggle"
		   :data-toggle "dropdown"
		   ,label)
	  (:div :class "dropdown-menu"
		,@(loop for item in options
		     collect (if (eql item '--)
				 `(htm (:div :class "dropdown-divider"))
				 (if (consp item)
				     `(htm (:a :class "dropdown-item"
					       :href ,(cdr item)
					       ,(car item)))
				     `(htm (:div :class "dropdown-item"
						 ,item)))))))))

(defmacro primary-dropdown (label &rest options)
  `(htm
    (:div :class "dropdown"
	  (:button :type "button"
		   :class "btn btn-primary dropdown-toggle"
		   :data-toggle "dropdown"
		   ,label)
	  (:div :class "dropdown-menu"
		,@(loop for item in options
		     collect (if (eql item '--)
				 `(htm (:div :class "dropdown-divider"))
				 (if (consp item)
				     `(htm (:a :class "dropdown-item"
					       :href ,(cdr item)
					       ,(car item)))
				     `(htm (:div :class "dropdown-item"
						 ,item)))))))))

(defmacro navbar (&rest things)
  `(htm
    (:nav :class "navbar navbar-expand-lg navbar-light"
	  (:div :class "collapse navbar-collapse"
		(:div :class "navbar-nav"
		     ,@things)))))

(defmacro navbar-brand (name link)
  `(htm
    (:a :class "navbar-brand" :href ,link ,name)))

(defmacro navbar-item (name link)
  `(htm
    (:a :class "nav-item nav-link" :href ,link ,name)))
