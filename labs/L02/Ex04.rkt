#lang htdp/bsl
;Exercise 4: Write the Racket function middle-of-three that consumes
;three numbers and produces the number that would be between the other two if
;they were listed in non-decreasing order. As an example,
;(middle-of-three 1 3 2) should produce 2.

(define (middle-of-three a b c)
  (cond
    [(<= a b c) b]
    [(<= a c b) c]
    [(<= c b a) b]
    [else a]))

(check-expect (middle-of-three 1 2 3) 2)
(check-expect (middle-of-three 2 1 3) 2)
(check-expect (middle-of-three 1 3 2) 2)

(check-expect (middle-of-three 3 2 1) 2)
(check-expect (middle-of-three 3 1 2) 2)
(check-expect (middle-of-three 2 3 1) 2)