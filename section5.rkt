;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname section5) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp")))))
;; check-guess: number number -> symbol
;; consumes guess and target and returns 'TooSmall, 'Perfect or 'TooLarge
;; depending on how guess relates to target
;; Tests
;;(symbol=? (check-guess 1 2) 'TooSmall)
;;(symbol=? (check-guess 1 1) 'Perfect)
;;(symbol=? (check-guess 2 1) 'TooLarge)

(define (check-guess guess target)
  (cond
    [(< guess target) 'TooSmall]
    [(= guess target) 'Perfect]
    [else 'TooLarge]))

;; check-color: symbol symbol symbol symbol -> symbol
;; consumes two target colors (assume a symbol, say 'red) and
;; two guess colors
;; returns
;; 'Perfect, if the first target is equal to the first guess and the second target is equal to the second guess
;; 'OneColorAtCorrectPosition, if the first guess is equal to the first target or the second guess is equal to the second target
;; 'OneColorOccurs, if either guess is one of the two targets
;; 'NothingCorrect, otherwise
(define (check-color target1 target2 guess1 guess2)
  (cond
    [(and (symbol=? target1 guess1) (symbol=? target2 guess2)) 'Perfect]
    [(or (symbol=? target1 guess1) (symbol=? target2 guess2)) 'OneColorAtCorrectPosition]
    [(or (symbol=? target1 guess2) (symbol=? target2 guess1)) 'OneColorOccurs]
    [else 'NothingCorrect]))