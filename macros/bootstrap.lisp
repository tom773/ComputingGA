(in-package :html-build)
	    
(defmacro simple-page ((&key title
			     head-stuff)
		       &body body)
  `(htm (:html 
	       (:head
		(:title ,title)
		(:link :rel "stylesheet"
		       :href "https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		       :crossorigin "anonymous")
		(:link :rel "stylesheet"
		       :href "style/main.css")
		(:meta :name "viewport"
		       :content "width=device-width, initial-scale=1, shrink-to-fit=no")
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

(defmacro logo-header (&body body)
  `(htm (:div :class "jumbotron text-center bg-logo"
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
				 (if (listp item)
				     `(htm (:a :class "dropdown-item"
					       :href ,(second item)
					       ,(first item)))
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
    (:nav :class "navbar navbar-expand-sm bg-light"
	  (:ul :class "navbar-nav"
	       ,@things))))

(defmacro navbar-from-list (things)
  `(htm
    (:nav :class "navbar navbar-expand-sm bg-light"
	  (:ul :class "navbar-nav"
	       ,@(loop for item in things collect
		    `(htm (:li :class "navbar-item" ,item)))))))

(defmacro navbar-brand (name link)
  `(htm
    (:a :class "navbar-brand" :href ,link ,name)))

(defmacro navbar-item (name link)
  `(htm
    (:li :class "navbar-item"
	 (:a :class "nav-link" :href ,link ,name))))

(defmacro image (name width &rest caption)
  `(htm
    (:div :class "img-container" :width ,width
	  (:img :src ,name)
	  (:br)
	  ,@(when caption
	      (loop for item in caption
		   collect `(htm ,item))))))

(defmacro columns (&body columns)
  `(htm
    (:div :class "row"
	  ,@columns)))

(defmacro column (width &body content)
  `(htm
    (:div :class ,(format nil "col-md-~d" (floor (* width 12)))
	  ,@content)))

