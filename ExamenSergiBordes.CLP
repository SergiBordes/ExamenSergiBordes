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
	(assert (mostrador (- ?x 40)))
	(assert (estanteria2 (+ ?y ?x)))
	(retract ?f1)
	(retract ?f2)
	
)

(defrule estanteria3-mostrador-20k
	?f4 <- (mostrador ?x)
	?f5 <- (estanteria3 ?y)
	?f6 <- (carro ?z)
	(test (>= ?y 20))
	(test (<= (+ ?z 20) 50))
	=>
	(assert (mostrador (+ ?x 20)))
	(assert (estanteria3 (+ ?y ?x)))
	(retract ?f4)
	(retract ?f5)
	
)

(defrule estanteria1-mostrador-30k
	?f7 <- (mostrador ?x)
	?f8 <- (estanteria1 ?y)
	?f9 <- (carro ?z)
	(test (>= ?y 30))
	(test (<= (+ ?z 30) 50))
	=>
	(assert (mostrador (+ ?x 20)))
	(assert (estanteria1 (+ ?y ?x)))
	(retract ?f7)
	(retract ?f8)
	
)

(defrule estanteria2-mostrador-20k
	?f10 <- (mostrador ?x)
	?f11 <- (estanteria2 ?y)
	?f12 <- (carro ?z)
	(test (>= ?y 20))
	(test (<= (+ ?z 20) 50))
	=>
	(assert (mostrador (+ ?x 20)))
	(assert (estanteria2 (+ ?y ?x)))
	(retract ?f10)
	(retract ?f11)
	
)