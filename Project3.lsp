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
(defun set-intersection (set-1 set-2) ;define function named set-intersection that takes two arguments set-1 and set-2
  (let ((result '())) ;declares local variable named result and initializes as empty set
    (dolist (x set-1) ;loops over each item (x) in set-1
      (cond ((member x set-2) ;conditional expression to see if the item (x) is in set-2
             (unless (member x result) ;this code executes unless x is a member of set-2, i.e. does not execute if x is in set-2
               (push x result)))))) ;add x to the set named result
    result) ;returns the result set


;; Part 5 - Jessia (code still in progress)
(defun boolean-xor (a b)
    (COND
          (NOT (EQ (a b))
               (NOT(NULL? a) a)
               (NOT(NULL? b) b)
           (ELSE nil))
    )
)
