(build-page "pages/ecc.html"
	    (simple-page
	     (:title "ECDSA, the brains of cryptography")
	     (site-header)
	     (container
	      (:h1 "The Elliptic Curve Digital Signing Algorithm")
	      "The Elliptic Curve Digital Signing Algorithm, or ECDSA, is the mathematical rule that makes cryptocurrency and other cryptographic tools. It involves cubic equations and big numbers."
	      "Fortunately you don't have to do any of that yourself."
	      (:h2 "The Great Curve" (footnote "As heard on Remain in Light by Talking Heads, 1980"))
	      "Users of an ECDSA-based system need to agree on a cubic equation to be able to safely verify each others' data. This equation looks like:"
	      (:div :class "maths"
		    (:em "y")
		    "="
		    (:em "x"
			 (:sup "3"))
		    "+"
		    (:em "ax"
			 (:sup "2"))
		    "+"
		    (:em "b")
		    "(mod p)")
	      (:em "p")
	      "should be a prime, and"
	      (:em "a")
	      "and"
	      (:em "b")
	      "should be coprime numbers below the prime. Most cryptocurrencies use"
	      (:code "secp256k1")
	      "which looks like (without the modulo):"
	      (:br)
	      (:img :src "/images/ecc.png")
	      (:small "Image by wxMaxima")
	      (:br)
	      "Users of ECDSA have a \"private key\", a large number between 0 and"
	      (:em "p")
	      " and a \"public key\", a point on the curve made by \"multiplying\""
	      (footnote "This is not actual multiplication. It just looks like it on paper.")
	      "the private key by a mutually agreed \"generator\" point on the curve."
	      "Two operations can be done which are important:"
	      (:ul
	       (:li "signing, which takes a private key and data and produces a signature, and")
	       (:li "verifying, which takes a public key and signature and verifies the private key could have made the signature"))
	      "These are based off the multiplications and other mathematical functions. They're quite complicated, so you should look into the"
	      (:a :href "..." "Python")
	      "and"
	      (:a :href "https://gitlab.com/Theemacsshibe/cl-ecdsa" "Common Lisp")
	      "implementations of ECDSA if you are interested in that kind of stuff."
	      (:h2 "Attacks")
	      (:h3 "Timing")
	      "An attacker can observe the time it takes to make a signature and make conclusions about the private key used. Naturally, multiplication is slower than addition for computers, so an operation involving more multiplications takes more time. If a random delay or a slower addition function is used, the attacker may have more difficulty detecting anything about the values used."
	      (:h3 "Listening")
	      "An attacker can listen to high frequency (above the hearable range) sounds produced by the computer running ECDSA. The attacker can associate the sounds with the operations required, similar to a timing attack.")))
