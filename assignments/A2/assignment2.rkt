#lang htdp/isl+

(define (unique-left lst)
   (foldl (lambda (currentElement newList)
            (if (ormap (lambda (existingElement) (equal? existingElement currentElement)) newList)
                newList
                (append newList(list currentElement))))
          empty lst))

(define (unique-right lst)
  (foldr (lambda (currentElement newList)
           (if (ormap (lambda (existingElement) (equal? existingElement currentElement)) newList)
               newList
               (cons currentElement newList)))
         empty lst))

;; Test cases given
(check-expect (unique-left (list 1 4 2 1 5 4)) (list 1 4 2 5))
(check-expect (unique-right (list 1 4 2 1 5 4)) (list 2 1 5 4))


;; My additional test cases for edge cases

;; Unique-left tests
;; Same numbers twice, but reversed
(check-expect (unique-left (list 1 2 3 3 2 1)) (list 1 2 3))

;; Identical numbers
(check-expect (unique-left (list 1 1 1 1 1)) (list 1))

;; empty list
(check-expect (unique-left empty) empty)

;; Negative Numbers
(check-expect (unique-left (list -1 1 -2 1 -8)) (list -1 1 -2 -8))


;; Unique-right tests
;; Same numbers twice, but reversed
(check-expect (unique-right (list 1 2 3 3 2 1)) (list 3 2 1))

;; Identical numbers
(check-expect (unique-right (list 1 1 1 1 1)) (list 1))

;; empty list
(check-expect (unique-right empty) empty)

;; Negative Numbers
(check-expect (unique-right (list -1 1 -2 1 -8)) (list -1 -2 1 -8))
