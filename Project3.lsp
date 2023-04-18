;Part 1. (Sarah)
(defun set-member (set item)
  (cond
    ((null set) nil) ;; If set is empty, return nil
    ((equal (car set) item) t) ;; If the first element in set is equal to item, return t
    (t (set-member (cdr set) item)))) ;; Otherwise, recursively call set-member on the rest of the set

;Part 2. (Erika)
(defun set-union (set-1 set-2) ; defining a function called set-union
  (princ set-1)
  (princ set-2)

  ; condition to check if set-1 is empty or not, if it is, then it returns set-2
  (if (equal nil set-1)
      set-2

      ; if not empty, check if the first element of set-1 is already in set-2
      (if (member (car set-1) set-2)
          (set-union (cdr set-1) set-2) ; if the first element of set-1 is already in set-2, then we don't need to add it again to the union of set-1 and set-2
          (cons (car set-1) (set-union (cdr set-1) set-2)))))) ; if the first element of set-1 is not in set-2, we need to add it to the union by creating a new list with the first element of set-1

(set-union '(1 2 3) '(2 3 4)) => (1 2 3 4)) ; calling function

;Part 3. Return the intersection of set-1 and set-2 (Jada)
(defun set-intersection (set1 set2)
  (if (null set1)
      '()
      (let ((item (car set1))) 
        (if (set-member set2 item) 
            (cons item (set-intersection (cdr set1) set2))
            (set-intersection (cdr set1) set2)))))


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
