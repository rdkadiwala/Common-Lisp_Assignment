(defun mins (lst1 lst2 lst3)
	
	(cond 	( 
			(or
				(not(and
					(listp lst1)
					(listp lst2)
					(listp lst3)
				))
				(or
					(null lst1)
					(null lst2)
					(null lst3)
				)
			)		
			nil
	      	)   
		(t
			(if
				(and
					(= 
						(length lst1) (length lst2) (length lst3)
					)
				)
				(let 
					(
						(elt1 (car lst1))
						(elt2 (car lst2))
						(elt3 (car lst3))
					) 
					(
						cons (min (* elt1 elt1 elt1) (* elt2 elt2 elt2) (* elt3 elt3 elt3))  (mins (cdr lst1) (cdr lst2) (cdr lst3) )
						
					)
				)
				nil
			)
		)
	)
)
	
