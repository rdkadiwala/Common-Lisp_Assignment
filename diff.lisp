(defun diff (lst1 lst2)
  (cond
       ((not (and (listp lst1) (listp lst2))) nil) 		;To check whether list1 and list2 are list or not
       ((or (null lst1) (null lst2)) nil) 			;To check whether list1 and list2 are null or not
       ((not (= (length lst1) (length lst2))) nil) 		;To check whether lenght of list1 and list2 are equal or not

       ;; Otherwise
       (t (let
         ((d (- (car lst1) (car lst2)))) 			;Take list1 and list2 head difference and store it in variable "d"
         (cons (* d d d) (diff (cdr lst1) (cdr lst2))))))) 	;Cube variable d and add it in new list, call diff function on list1 and list2 tail recursivly
