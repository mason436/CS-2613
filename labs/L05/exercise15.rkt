#lang htdp/bsl
(define (unique right lst)
  (cond
    [(empty? lst) empty]
    [(cons? lst) (if (something? (first lst))
                     ;;keep first element
                    (cons (first lst)
                          (unique-right (rest lst)))
                    ;; drop first element
                    (unique-right (rest lst)))]))

(check-expect (unique-right empty) empty)
(check-expect
 (unique-right
  (list 1 4 2 1 5 4))
 (list 2 1 5 4))