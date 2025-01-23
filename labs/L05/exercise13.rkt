#lang htdp/bsl
(define (substitute from to lst)
  (cond
    [(empty? lst) empty]
    [(cons? lst)(cons
                 (if (equal? from (first lst))
                 to
                 (first lst))
                 (substitute from to(rest lst)))]))

(check-expect
 (substitute 3 "three" (list "four" 3 4 "three" 3))
 (list "four" "three" 4 "three" "three"))

(check-expect
 (substitute 8 "eight" (list "five" 6 8 2 1 "one" 8))
 (list "five" 6 "eight" 2 1 "one" "eight"))