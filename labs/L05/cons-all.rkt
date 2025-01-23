#lang htdp/bsl
(define (cons-all elt lst)
  (cond
    [(empty? lst) empty]
    [(cons? lst)
     (cons
     ;;; process first (conditionally)
     (cons elt (first lst)
            ;; process rest
            (cons-all elt (rest lst))))]))

(define (Length lst)
  (cond
    [(empty? lst) 0]
    [(cons? lst)
     (+
      ;; process first (unconditionally)

(check-expect (cons-all 1 empty) empty)
(check-expect (cons-all 1 (list empty)) '((1)))
(check-expect (cons-all 3 '((2 4) () (5)))
              '((3 2 4) (3) (3 5)))