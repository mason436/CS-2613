#lang htdp/bsl+
(check-expect (foldr cons myList1 myList2) (append myList1 myList2))
(define (A