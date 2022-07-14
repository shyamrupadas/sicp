#lang racket/base

(require rackunit)

;; BEGIN
(define (sum-of-squares a b)
  (+ (* a a) (* b b)))

(define (sum-of-squares-of-top-two a b c)
  (cond ((and (<= c a) (<= c b)) (sum-of-squares a b))
        ((and (<= a b) (<= a c)) (sum-of-squares b c))
        (else (sum-of-squares a c))))
;; END

(check-equal? (sum-of-squares-of-top-two 1 2 3) 13)
(check-equal? (sum-of-squares-of-top-two 3 4 2) 25)
(check-equal? (sum-of-squares-of-top-two 5 3 4) 41)
(check-equal? (sum-of-squares-of-top-two 1 1 2) 5)