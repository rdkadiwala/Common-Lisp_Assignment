(defun filter (lst num)
	(cond 	( 
		(or (not (listp lst) ) 				;Check whether the first args is list or not, return NIL if it is not list
		    ( null lst ) 				;Return NIL if list is empty or null
		    (not (atom num) )				;Return NIL if second args is not an element
		    (not(and (plusp num) (integerp num)) ) 	;Check whether the element is a integer greater than 0, if not return NIL
                )nil
	      	)
		(t
 		(if(> (car lst) num) 				;Check if head of the list is greater than the element
                    ( cons (car lst)  (filter (cdr lst) num ) )	;Add head of the list to new list and call recursively on tail of the list
		    (filter (cdr lst) num )			;Recursive call on tail of the list
		)
		)
	)
)   

	
