(defun mins (lst1 lst2 lst3)
	
	(cond 
	((or
	   (not(and (listp lst1) (listp lst2) (listp lst3)))   ;Check whether three args are list or not, return NIL if anyone args is not list
	   (or (null lst1) (null lst2) (null lst3))   ;Check whether three lists are null, return NIL if anyone is null
	   (not(= (length lst1) (length lst2) (length lst3))))   ;Check whether three list are of equal length, return NIL if its not
	    nil)   
	(t(let 
		;;add element which is minimum of the cube of head of three lists to new list and call recursively on tail of three lists
		((elt1 (car lst1)) (elt2 (car lst2)) (elt3 (car lst3))) 
		(cons (min (* elt1 elt1 elt1) (* elt2 elt2 elt2) (* elt3 elt3 elt3))  (mins (cdr lst1) (cdr lst2) (cdr lst3)))))))
	
