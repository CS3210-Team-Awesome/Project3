;Part 1. (Sarah)
(defun set-member (set item)
  (cond
    ((null set) nil) ;; If set is empty, return nil
    ((equal (car set) item) t) ;; If the first element in set is equal to item, return t
    (t (set-member (cdr set) item)))) ;; Otherwise, recursively call set-member on the rest of the set

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
