;; Function 3 tests set-intersection
(print "Test set for set-intersection function")
(if (Equal (set-intersection '(1 2) '(2 4)) '(2))
  (print "Test 1 PASS with sets (1,2) and (2, 4)")
  
  (print "Test 1 FAIL with sets (1,2) and (2, 4)"))

(if (Equal (set-intersection '(1 2 3) '(2 3 4)) '(2 3))
  (print "Test 2 PASS with sets (1 2 3) and (2 3 4)")
  (print "Test 2 FAIL with sets (1 2 3 and (2 3 4)"))
  
(if (Equal (set-intersection '(1 2 3 9 10) '(2 3 4 7 9 11)) '(2 3 9))
  (print "Test 3 PASS with sets (1 2 3 9 10) and (2 3 4 7 9 11)")
  (print "Test 3 FAIL with sets (1 2 3 9 10)"))

;; Function 4 test: Set-1 and set-2 diff
(print "Test set for set difference function")

(if (Equal (set-diff '(1 2) '(2 4)) '(1))
  (print "Test 1 PASS with sets (1,2) and (2, 4)")
  (print "Test 1 FAIL with sets (1,2) and (2, 4)"))

(if (Equal (set-diff '(1 2 3 4 5) '(3 4 5 9 10)) '(1 2))
  (print "Test 1 PASS with sets (1 2 3 4 5) and (3 4 5 9 10)")
  (print "Test 1 FAIL with sets (1 2 3 4 5) and (3 4 5 9 10)"))

(if (Equal (set-diff '(3 4 5 9 10) '(1 2 3 4 5)) '(9 10))
  (print "Test 1 PASS with sets (3 4 5 9 10) and (1 2 3 4 5)")
  (print "Test 1 FAIL with sets (3 4 5 9 10) and (1 2 3 4 5)"))

;; Function 5 test: boolean-xor

(print "Test set for boolean-xor function where 0 represents false, 1 represents true")

;;test for parameters 0 1
(if (Equal (boolean-xor nil t) t)
    (print "Test 1 pass with 0 1"))

(if (Equal (boolean-xor nil t) nil)
    (print "Test 1 fail with 0 1"))

;;test for parameters 0 0
(if (Equal (boolean-xor nil nil) nil)
    (print "Test 2 pass with 0 0"))

(if (Equal (boolean-xor nil nil) t)
    (print "Test 2 fail with 0 0"))

;; test for parameters 1 1
(if (Equal (boolean-xor t t) nil)
    (print "Test 3 pass with 1 1"))

(if (Equal (boolean-xor t t) t)
    (print "Test 3 fail with 1 1"))

;; test for parameters 1 0
(if (Equal (boolean-xor t nil) t)
    (print "Test 4 pass with 0 1"))

(if (Equal (boolean-xor t nil) nil)
    (print "Test 4 fail with 0 1"))


;; Tests for function 6, implication

(print "Function 6 tests where 0 represents false and 1 represents true")

;; test for parameters 0 1
(if (Equal (implication nil t) t)
    (print "Test 1 pass with 0 1"))

(if (Equal (implication nil t) nil)
    (print "Test 1 fail with 0 1"))

;;test for parameters 0 0
(if (Equal (implication nil nil) t)
    (print "Test 2 pass with 0 0"))

(if (Equal (implication nil nil) nil)
    (print "Test 2 fail with 0 0"))

;; test for parameters 1 1
(if (Equal (implication t t) t)
    (print "Test 3 pass with 1 1"))

(if (Equal (implication t t) nil)
    (print "Test 3 fail with 1 1"))

;; test for parameters 1 0
(if (Equal (implication t nil) nil)
    (print "Test 4 pass with 0 1"))

(if (Equal (implication t nil) t)
    (print "Test 4 fail with 0 1"))


;Tests for bi-implication function
(print "Test for boolean-iff function")

(if (Equal (boolean-iff nil t) nil)
    (print "Test 1 PASS with 0 1")
    (print "Test 1 FAIL with 0 1"))

(if (Equal (boolean-iff nil nil) t)
    (print "Test 2 PASS with 0 0")
    (print "Test 2 FAIL with 0 0"))

(if (Equal (boolean-iff t t) t)
    (print "Test 3 PASS with 1 1")
    (print "Test 3 FAIL with 1 1"))

(if (Equal (boolean-iff t nil) nil)
    (print "Test 4 PASS with 1 0")
    (print "Test 4 FAIL with 1 0"))
