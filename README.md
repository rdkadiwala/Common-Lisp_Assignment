# Project on common-lisp

### Question - 1
> Define a Common Lisp function maxlist that takes two lists as arguments and returns a list constructed by the maximum elements after a pairwise comparison,i.e. it compares the corresponding first elements, then it compares the corresponding second elements, etc. You must check for all preconditions. Example executions are as follows:
  
> *__Tese Cases:__*
```
> (maxlist ’(4 6 8 9 2) ’(5 1))
(5 6 8 9 2)
> (maxlist ’(3 4 5) ’(1 2 3))
(3 4 5)
> (maxlist ’() ’(6 1 9))
(6 1 9)
```
### Question - 2
> Define a Common Lisp function (mins list1 list3 list3 ) that takes three nonempty lists of equal length and produces a list whose elements correspond to the cubed minimum between the corresponding elements of the three arguments. You must check
for all preconditions. We may assume that non-empty list arguments contain only
numeral elements. Example executions are as follows:
  
> *__Tese Cases:__*
```
> (mins ’1 ’(3 1 1) ’(2 3 4))
NIL
> (mins ’() ’(1 2 7) ’(2 3 4))
NIL
> (mins ’(2) ’(1 2 4) ’(2 3 4))
NIL
> (mins ’(2 1 5) ’(1 2 4) ’(2 3 4))
(1 1 64)
```

