#lang htdp/bsl+
(define maybe-cons
  (lambda (predicate element lst)
  (if (predicate element)
      (cons element lst)
      lst)))
(check-expect (maybe-cons odd? 1 '(2 3)) '(1 2 3))
(check-expect (maybe-cons odd? 2 '(3 4)) '(3 4))

(define (Filter predicate lst)
            (foldr (lambda (a b) (maybe-cons predicate a b))
                   empty lst))


(define (Filter predicate lst)
            (foldr (lambda (a b)
                     ((lambda (predicate element lst)
                        (if (predicate element)
                            (cons element lst)
                            lst)) predicate a b))
                   empty lst))
;; ^^ "Torture test" of lambdas, figure out what can be replaced

(check-expect (Filter (lambda (x) #f) '(1 2 3)) '())
(check-expect (maybe-cons