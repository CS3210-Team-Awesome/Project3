




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
