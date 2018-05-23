(build-page "pages/mtgox.html"
	    (simple-page
	     (:title "Mt Gox")
	     (site-header)
	     (container
	      (:h1 "Mt Gox")
	      "A small company named"
	      (:a :href "https://www.mtgox.com"
		  "Mt Gox")
	      "took most of the world's Bitcoin trades from 2013 to 2014. They don't now. Why is that?"
	      (:h2 "The first failure")
	      "In 2011, a cracker accessed a staff account on Mt Gox and used it to crash their price. "
	      "The cracker transferred a large number of bitcoins to themselves and sold them using the exchange's automatic selling program, dropping the apparent price down to one cent. "
	      "Fortunately, Mt Gox still had control over the coins, and the damage was not permanent, proving so by transferring the coins from cold storage to another address controlled by the website."
	      (footnote
	       (:a :href "https://blockchain.info/block-index/147599" "Block #147599")
	       "where Mt Gox transferred 450,331.1678451 bitcoins between its addresses. It is normal for one user of Bitcoin to have many addresses.")
	      "They were able to restore the coins and trading was back to normal soon after. "
	      (:h2 "Bitcoin theft")
	      "From 7 Feburary 2014, Mt Gox started showing issues. Withdrawls were halted, after the owners discovered transactions could be modified (\"malleability\") while still appearing valid to Bitcoin nodes. "
	      (:hr)
	      (footnote-collector)
	      (comment-box))))
