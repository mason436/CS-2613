#lang htdp/bsl
(define-struct Z())
(define-struct S(pred))
(define (pred nat)
  (cond
    [(Z? nat) (error "can't apply pred to Z")]
    [(S? nat) (S-pred nat)]))

;; Question 1, Subtracting natural numbers with structural recursion
(define (sub nat1 nat2)
  (cond
    [(Z? nat2) nat1]
    [(Z? nat1) (error "negative numbers not implemented")]
    [(S? nat1) (sub (S-pred nat1) (S-pred nat2))]))

;; Question 2
(define (less nat1 nat2)
  (cond
    [(Z? nat1)
     (cond
       [(Z? nat2) false]
       [(S? nat2) true])]
    [(Z? nat2) false]
    [(S? nat1)(less (S-pred nat1) (S-pred nat2))]))

;; Question 3
(define (div nat1 nat2)
  (cond
    [(Z? nat2) (error "divide by zero")] 
    [(Z? nat1) nat1]
    [(less nat1 nat2) (make-Z)]
    [(S? nat1) (make-S (div (sub nat1 nat2) nat2))]))

;; Defintions of the numbers used for testing, numbers one through four
(define zero (make-Z))
(define one (make-S zero))
(define two (make-S one))
(define three (make-S two))
(define four (make-S three))




;; Question 1 testing, Subtracting natural numbers with structural recursion
(check-expect (sub zero zero) zero) ;; Tests given
(check-expect (sub one zero) one)
(check-expect (sub one one) zero)
(check-error (sub one two) "negative numbers not implemented")

;; Additional tests
;; 4 - 3 = 1, testing larger numbers, which will require more recursive calls
(check-expect (sub four three) one)
;; 1 - 4 = -3, testing error handling for larger subtraction that will result in a neg number
(check-error (sub one four)"negative numbers not implemented")
;; 4 - 0 = 4, testing to confirm that zero will still be returned when nat2 is zero, even with a larger nat1
(check-expect (sub four zero) four)
;; 0 - 3 = -3, testing error handling for subtracting from zero with a larger nat2
(check-error (sub zero three) "negative numbers not implemented")




;; Question 2 testing, Testing if nat1 is less then nat2. Returns boolean operator
(check-expect (less zero zero) false) ;; Tests given
(check-expect (less zero one) true)
(check-expect (less one zero) false) 
(check-expect (less two one) false)
(check-expect (less one two) true)

;; Additional tests
(check-expect (less four one) false) ;; Testing with larger numbers, where nat2 is less
 ;; Testing with larger numbers, where nat1 is less. This will result in more recursive calls
(check-expect (less one three) true)
(check-expect (less four four) false) ;; Testing with a larger nat1 and nat2 equaling each other
(check-expect (less two three) true) ;; Test with numbers that have a difference of 1




;; Question 3, dividing natural numbers using structural recursion
;; Given tests
(check-error (div zero zero) "divide by zero")
(check-error (div one zero) "divide by zero")
(check-expect (div one one) one)
(check-expect (div three two) one)
(check-expect (div four two) two)

;; Additional tests
(check-error (div four zero) "divide by zero") ;; Error checking when div by zero with a larger number

;; Testing dividing numbers that would give a non natural number in real cases, to ensure no errors only the quotient
(check-expect (div four three) one)
(check-expect (div four one) four) ;; Division with a larger number by 1, most recursions given number range
;; Division where nat2 is larger then nat1. ensure answer is zero, and not an error or incorrect quotient
(check-expect (div two three) zero)
;; Same as above, but with different values, that wouldn't have a remainder if flipped in the equation
(check-expect (div two four) zero)









