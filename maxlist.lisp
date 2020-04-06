(defun maxlist (lst1 lst2)
  (cond                                                                          ;To handle multiple conditions
   ((not (and (listp lst1) (listp lst2))) nil)                                   ;Check whether both args as list or not, return NIL if anyone or both args is not list    
   ((null lst1) lst2)                                                            ;Return list2 if list1 is empty or null
   ((null lst2) lst1)                                                            ;Return list1 if list2 is empty or null
   
   ;;Head of both (lst1 and lst2) are equal then add element to new list and call recursively on tail of both list
   ((= (car lst1) (car lst2)) (cons (car lst1) (maxlist (cdr lst1) (cdr lst2))))
   
   ;;Head of lst2 is greater than head of lst1 then add head of lst2 to new list and call maxlist recursively on tail of both list
   ((< (car lst1) (car lst2)) (cons (car lst2) (maxlist (cdr lst1) (cdr lst2))))

   ;;Otherwise consider head of lst1 is greater than head of lst2 and add head of lst1 to new list and call recursively on tail of both list
   (t (cons (car lst1) (maxlist (cdr lst1) (cdr lst2)))))
)