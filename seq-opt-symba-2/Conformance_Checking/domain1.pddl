(define (domain Mining)
(:requirements :typing :equality)
(:types state)

(:predicates
(currstate ?s - state)
)

(:functions
(total-cost)
)

(:action add-a-ct0
:precondition (currstate s_0_3) 
:effect (and (not (currstate s_0_3)) (currstate s_0_2)  (increase (total-cost) 1))
)

(:action add-a-ct1
:precondition (currstate s_0_0) 
:effect (and (not (currstate s_0_0)) (currstate s_0_1)  (increase (total-cost) 1))
)

(:action add-b-ct2
:precondition (currstate s_0_3) 
:effect (and (not (currstate s_0_3)) (currstate s_0_0)  (increase (total-cost) 1))
)

(:action add-b-ct3
:precondition (currstate s_0_2) 
:effect (and (not (currstate s_0_2)) (currstate s_0_1)  (increase (total-cost) 1))
)

(:action add-c-ct4
:precondition (and (currstate s_1_0) (not (currstate s_2_1)) (not (currstate s_2_0)) )
:effect (and (not (currstate s_1_0)) (currstate s_1_1)  (increase (total-cost) 1))
)

(:action add-c-ct5
:precondition (and (currstate s_2_1) (not (currstate s_1_0)) )
:effect (and (currstate s_2_1)  (increase (total-cost) 6))
)

(:action add-c-ct6
:precondition (and (currstate s_2_0) (not (currstate s_1_0)) )
:effect (and (currstate s_2_0)  (increase (total-cost) 3))
)

(:action add-c-ct7
:precondition (and (currstate s_1_0) (currstate s_2_1) )
:effect (and (not (currstate s_1_0)) (currstate s_1_1) (currstate s_2_1)  (increase (total-cost) 6))
)

(:action add-c-ct8
:precondition (and (currstate s_1_0) (currstate s_2_0) )
:effect (and (not (currstate s_1_0)) (currstate s_1_1) (currstate s_2_0)  (increase (total-cost) 3))
)

(:action sync-a-ct0
:precondition (and (currstate t0) (currstate s_0_3) )
:effect (and (not (currstate t0)) (currstate t1) (not (currstate s_0_3)) (currstate s_0_2) )
)

(:action sync-a-ct0
:precondition (and (currstate t1) (currstate s_0_3) )
:effect (and (not (currstate t1)) (currstate t2) (not (currstate s_0_3)) (currstate s_0_2) )
)

(:action sync-a-ct1
:precondition (and (currstate t0) (currstate s_0_0) )
:effect (and (not (currstate t0)) (currstate t1) (not (currstate s_0_0)) (currstate s_0_1) )
)

(:action sync-a-ct1
:precondition (and (currstate t1) (currstate s_0_0) )
:effect (and (not (currstate t1)) (currstate t2) (not (currstate s_0_0)) (currstate s_0_1) )
)

(:action sync-b-ct2
:precondition (and (currstate t3) (currstate s_0_3) (not (currstate s_2_0)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_0_3)) (currstate s_0_0) )
)

(:action sync-b-ct3
:precondition (and (currstate t3) (currstate s_0_2) (not (currstate s_2_0)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_0_2)) (currstate s_0_1) )
)

(:action sync-b-ct4
:precondition (and (currstate t3) (currstate s_2_0) (not (currstate s_0_3)) (not (currstate s_0_2)) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_2_0)) (currstate s_2_1) )
)

(:action sync-b-ct5
:precondition (and (currstate t3) (currstate s_0_3) (currstate s_2_0) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_0_3)) (currstate s_0_0) (not (currstate s_2_0)) (currstate s_2_1) )
)

(:action sync-b-ct6
:precondition (and (currstate t3) (currstate s_0_2) (currstate s_2_0) )
:effect (and (not (currstate t3)) (currstate t4) (not (currstate s_0_2)) (currstate s_0_1) (not (currstate s_2_0)) (currstate s_2_1) )
)

(:action sync-c-ct7
:precondition (and (currstate t2) (currstate s_1_0) )
:effect (and (not (currstate t2)) (currstate t3) (not (currstate s_1_0)) (currstate s_1_1) )
)

(:action sync-a-t0t1
:precondition (and (currstate t0) (not (currstate s_0_3)) (not (currstate s_0_0)) )
:effect (and (not (currstate t0)) (currstate t1))) 

(:action sync-a-t1t2
:precondition (and (currstate t1) (not (currstate s_0_3)) (not (currstate s_0_0)) )
:effect (and (not (currstate t1)) (currstate t2))) 

(:action sync-c-t2t3
:precondition (and (currstate t2) (not (currstate s_1_0)) )
:effect (and (not (currstate t2)) (currstate t3))) 

(:action sync-b-t3t4
:precondition (and (currstate t3) (not (currstate s_0_3)) (not (currstate s_0_2)) (not (currstate s_2_0)) )
:effect (and (not (currstate t3)) (currstate t4))) 

(:action del-a-t0t1
:precondition (currstate t0) 
:effect (and (not (currstate t0)) (currstate t1)  (increase (total-cost) 1))
) 

(:action del-a-t1t2
:precondition (currstate t1) 
:effect (and (not (currstate t1)) (currstate t2)  (increase (total-cost) 1))
) 

(:action del-c-t2t3
:precondition (currstate t2) 
:effect (and (not (currstate t2)) (currstate t3)  (increase (total-cost) 1))
) 

(:action del-b-t3t4
:precondition (currstate t3) 
:effect (and (not (currstate t3)) (currstate t4)  (increase (total-cost) 1))
) 

(:action goto-abstract_states-cs0
:precondition (and (currstate t4) (currstate s_0_2) (currstate s_1_0) )
:effect (and (currstate s_0_abstract) (not (currstate s_0_2)) )
)

(:action goto-abstract_states-cs1
:precondition (and (currstate t4) (currstate s_0_0) (currstate s_1_0) )
:effect (and (currstate s_0_abstract) (not (currstate s_0_0)) )
)

)