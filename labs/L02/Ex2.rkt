#lang htdp/bsl
(define y 18)
(define (t1 x)
  (or (= x 0) (< 0 (/ y x))))
(define (t2 x)
  (or (< 0 (/ y x)) (= x 0)))
(define (t3 x)
  (and (= x 0) (< 0 (/ y x))))
(define (t4 x)
  (or (< 0 (/ y x)) (not (= x 0))))
