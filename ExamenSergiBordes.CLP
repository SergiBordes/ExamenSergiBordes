(deffacts datos (estanteria1 30)
	(estanteria2 20)
	(estanteria3 20)
	(estanteria4 0)
	(mostrador 40)
	(carro 0)
)
	


(defrule mostrador-estanteria2-40k
	?f1 <- (mostrador ?x)
	?f2 <- (estanteria2 ?y)
	?f3 <- (carro ?z)
	(test (>= ?x 40))
	(test (<= (+ ?z 40) 50))
	=>
	(assert (mostrador 0))
	(assert (estanteria2 (+ ?y ?x)))
	(retract ?f1)
	(retract ?f2)
	(retract ?f3)
	
)

(defrule estanteria3-mostrador-20k
	?f1 <- (mostrador ?x)
	?f2 <- (estanteria3 ?y)
	?f3 <- (carro ?z)
	(test (>= ?x 40))
	(test (<= (+ ?z 40) 50))
	=>
	(assert (mostrador 0))
	(assert (estanteria2 (+ ?y ?x)))
	(retract ?f1)
	(retract ?f2)
	(retract ?f3)
	
)