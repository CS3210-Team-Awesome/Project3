;Part 1. (Sarah)
(defun set-member (set item)
  (cond
    ((null set) nil) ;; If set is empty, return nil
    ((equal (car set) item) t) ;; If the first element in set is equal to item, return t
    (t (set-member (cdr set) item)))) ;; Otherwise, recursively call set-member on the rest of the set

;Part 2. (Erika)
; Definition: Union function takes two lists and returns a new list containing all the elements present in either of the lists. 
; If there are duplications, then only one copy of the member is retained in the returned list.

(defun set-union (set-1 set-2) ; defining a function called set-union
  (cond ((null set-1) set-2) ; condition to check if set-1 is empty, if so, then it returns set-2
      (set-member (car set-1) set-2) ; checks whether the first element of set-1 is also an element of set-2
      (set-union (cdr set-1) set-2)) ; calls function recursively if the first element of set-1 is also an element of set-2
      (t (cons (car set-1) (set-union (cdr set-1) set-2)))) ; condition t is used if the first element of set-1 is not in set-2, then we create a new list which contains the first element of set-1 and the union of the rest of the elements in set-1 and set-2
;(set-union '(1 2 3) '(2 3 4)) => '(1 2 3 4)) ; calling function

;Part 3. Return the intersection of set-1 and set-2 (Jada)
(defun set-intersection (set-1 set-2) ;define function named set-intersection that takes two arguments set-1 and set-2
  (let ((result '())) ;declares local variable named result and initializes as empty set
    (dolist (x set-1) ;loops over each item (x) in set-1
      (cond ((member x set-2) ;conditional expression to see if the item (x) is in set-2
             (unless (member x result) ;this code executes unless x is a member of set-2, i.e. does not execute if x is in set-2
               (push x result)))))) ;add x to the set named result
    result) ;returns the result set


;; Part 5 - Jessia
(defun boolean-xor(a b) ;; function definition
    (if (EQUAL a b) nil) ;; checks if parameters are equal and if true returns false
    (if (not(EQUAL a b)) t);;checks if parameters are not equal and if true returns true
    )
(boolean-xor a b);;calls the function

;;Part 6
(defun implication(a b);; initialize function
    (cond ((EQUAL a b) t) ;; test if inputs are equal and if so returns true
          ((EQUAL a nil) t) ;; tests if a is nil, if so it is always true
          ((and (EQUAL a t) (EQUAL b nil)) nil) ;; tests for the one false condition, a = t and b = nil, returns false 
        )
    )
(implication a b);; calls function

