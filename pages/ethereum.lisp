(build-page "pages/ethereum.html"
	    (simple-page
	     (:title "Ethereum and The DAO")
	     (site-header)
	     (container
	      (:h1 "Ethereum and The DAO")
	      "Ethereum is a programmable cryptocurrency. What does that mean? You can make decisions about how to deal with the currency in the currency itself. Lost? Me too &mdash; so was The DAO, a group of people who wanted to use it to transparently and provably provide funds for startups."
	      (:h2 "Bug Tracking")
	      "On the 27th of May, 2016, researches"
	      (:a :href "http://hackingdistributed.com/2016/05/27/dao-call-for-moratorium/" "found")
	      "several possible weaknesses in the DAO's Ethereum scripts, which decide on if funds can be moved. The researches concluded:"
	      (:blockquote
	       "[Our] concerns motivate a moratorium on proposals to prevent losses due to poor mechanism design. A moratorium would give The DAO time to make critical security upgrades. We encourage the community to adopt a moratorium until The DAO can be updated.")
	      (:h2 "Breakdown")
	      "The bugs were exploited on the __ of __. Approximately __ coins were seized, and several companies such as Hashflare"
	      (footnote
	       (:a :href "https://cointelegraph.com/news/the-dao-breach-stops-ether-miner"
		   "The DAO Breach Stops Ether Miner"))
	      "had to stop operations."
	      (:h2 "Hard Fork")
	      "A hard fork is a final plan for very bad cryptocurrency bugs, such as this one. The Ethereum developers and community ran one to reverse the effects of the DAO breach on the 20th of July."
	      (footnote
	       (:a :href "https://blog.ethereum.org/2016/07/20/hard-fork-completed/"
		   (:em "Hard Fork Completed")))
	      "Unfortunately, some users did not appreciate why a fork should exist and now two currencies with the name"
	      (:em "Ethereum")
	      "exist."
	      (:em "Ethereum Classic")
	      "has the original error unpatched and today is worth much less than the forked currency."
	      (:hr)
	      (footnote-collector)
	      (comment-box))))
