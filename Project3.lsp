
;; Part 5 - Jessia (code still in progress)
(defun boolean-xor (a b)
    (COND
          (NOT (EQ (a b))
               (NOT(NULL? a) a)
               (NOT(NULL? b) b)
           (ELSE nil))
    )
)
