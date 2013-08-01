;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname section3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; attendees: number -> number
;; computes number of attendees given a ticket-price
;; at $5.00, 120 people will attend.
;; at $4.00, 270 people will attend.
;; at $3.00, 420 people will attend.
(define (attendees ticket-price)
  (+ 120 (* (- 5 ticket-price) (/ 15 0.1))))

;; TESTS - (attendees ...)
;;(equal? (attendees 5.0) 120)
;;(equal? (attendees 4.0) 270)
;;(equal? (attendees 3.0) 420)

;; revenue: number -> number
;; computes revenue given a ticket-price
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

;; TESTS - revenue
;;(equal? (revenue 5.0) (* 5 120))
;;(equal? (revenue 4.0) (* 4 270))
;;(equal? (revenue 3.0) (* 3 420))

;; cost: number -> number
;; computes cost given a ticket-price
(define (cost ticket-price)
  (+ 180 (* (attendees ticket-price) 0.04)))

;; TESTS - cost
;;(equal? (cost 5.0) (+ 180 (* 120 0.04)))
;;(equal? (cost 4.0) (+ 180 (* 270 0.04)))
;;(equal? (cost 3.0) (+ 180 (* 420 0.04)))

;; profit: number -> number
;; computes the profit as the difference between revenue and costs
;; for a ticket-price
(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))

(cost 5)
(cost 4)
(cost 3)

(profit 5)
(profit 4)
(profit 3)