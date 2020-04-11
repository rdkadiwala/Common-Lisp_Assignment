(defun filter (lst num)
	(cond 	( 
		(or (not (listp lst) )
		    ( null lst )
		    (not (atom num) )
		    (not(and (plusp num) (integerp num)) )
                )nil
	      	)
		(t
 		(if(> (car lst) num)
                    ( cons (car lst)  (filter (cdr lst) num ) )
		    (filter (cdr lst) num )
		)
		)
	)
)   

	
