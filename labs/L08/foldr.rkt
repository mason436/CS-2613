#lang htdp/bsl+
;; Foldr: (A B -> B) B (listof A) -> B
;; Unification
(: Foldr ((%a %b -> %b) %b (ListOf %a) -> %b))
(define (Foldr combine base lst)
  (cond
    [(empty? lst) base]
    [else (combine
            (first lst)
            (Foldr combine base (rest lst)))]))

(define (sum lst) (Foldr + 0 lst))
(sum '(1 2 3))

(define myList1 '(3 4))
(define myList2 '(1 2))
(Foldr cons myList1 myList2)