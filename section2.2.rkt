;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname section2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
;; Fahrenheit->Celsius : number -> number
;; consumes a temperature measured in Fahrenheit and produces the Celsius equivalent.
;; (define (Fahrenheit->Celsius x) ...)
;; Example 1: (Fahrenheit->Celsius 32) should be 0
;; Example 2: (Fahrenheit->Celsius 100) should be about 38
(define (Fahrenheit->Celsius x)
  (* (- x 32) (/ 5 9)))

;;Tests:
;;(equal? (Fahrenheit->Celsius 32) 0)
;;(equal? (Fahrenheit->Celsius 95) 35)

;; dollar->euro : number -> number
;; consumes a number of dollars and produces the euro equivalent
;; (define (dollar->euro number-of-dollars) ...)
;; Example 1: (dollar->euro 0) should produce 0
;; Example 2: (dollar->euro 1) should produce 0.7065
;; Example 3: (dollar->euro 10) should produce 7.065
(define (dollar->euro number-of-dollars)
  (* number-of-dollars 0.7065))

;;Tests:
;;(equal? (dollar->euro 0) 0)
;;(equal? (dollar->euro 1) 0.7065)
;;(equal? (dollar->euro 10) 7.065)

;; triangle : number number -> number
;; consumes the length of a triangle's side and the perpendicular height
;; and produces the triangle area
;;(define (triangle length height) ...)
;; Example 1: (triangle 0 0) should produce 0
;; Example 2: (triangle 1 1) should produce 1/2
;; Example 3: (triangle 5 2) should produce 5
(define (triangle length height)
  (/ (* length height) 2))

#|
sum-coins: number number number number -> number
Consumes the number of pennies, nickels, dimes and quarters 
and returns the total amount of money.
(define (sum-coins pennies nickels dimes quarters) ...)
Example: (sum-coins 0 0 0 0) should produce 0
Examlpe: (sum-coins 1 1 1 1) should produce 41
|#
(define (sum-coins p n d q)
  (+ p (* 5 n) (* 10 d) (* 25 q))) 

;;Tests
;;(equal? (sum-coins 0 0 0 0) 0)
;;(equal? (sum-coins 1 1 1 1) 41)

;; total-profit: number -> numbers
;; consumes number of attendees and produces theater's income using these rules:
;; each attendee pays $5 per ticket. every performance costs the theater $20 plus
;; $.50 per attendee.
;; (define (total-profit attendees) ...)
;; Example: 1 attendee should produce 5 - (20 + .5) = -15.5
;; Example: 10 attendees should produce 5(10) - (20 + 10(.5)) = 25
(define TICKET-PRICE 5)
(define ATTENDEE-COST .50)
(define PERFORMANCE-COST 20)

(define (total-income attendees)
  (* attendees TICKET-PRICE))

(define (total-costs attendees)
  (+ PERFORMANCE-COST (* attendees ATTENDEE-COST)))

(define (total-profit attendees)
  (- (total-income attendees) (total-costs attendees)))

;;Tests
;;(equal? (total-profit 1) -15.5)
;;(equal? (total-profit 10) 25)

;;Tests:
;;(equal? (triangle 0 0) 0)
;;(equal? (triangle 1 1) 1/2)
;;(equal? (triangle 5 2) 5)

;; convert3 : number number number -> number
;; consumes three digits, starting with LSD, followed by the next most significant one, and so on.
;; the pgm produces the corresponding number
;; (define (convert3 number-1 number-2 number-3) ... )
;; Example 1: (convert 1 2 3) should produce 321
(define (convert3 n1 n2 n3)
  (+ n1 (* n2 10) (* n3 100)))

;;Tests:
;;(equal? (convert3 0 0 0) 0)
;;(equal? (convert3 1 2 3) 321)

(define (f n)
  (+ (/ n 3) 2))

(define (f1 n)
  (+ (sqr n) 10))

(define (f2 n)
  (+ (* (/ 1 2) (sqr n)) 20))

(define (f3 n)
  (- 2 (/ 1 n)))
