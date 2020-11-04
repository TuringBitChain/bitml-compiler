#lang bitml

(debug-mode)
(verification-only)

(participant "A" "029c5f6f5ef0095f547799cb7861488b9f4282140d59a6289fbc90c70209c1cced") ; player
(participant "B" "022c3afb0b654d3c2b0e2ffdcf941eaf9b6c2f6fcf14672f86f7647fa7b817af30") ; dealer

(define (Bet n)
  (choice
   (auth "B" (withdraw "A"))        ; B says that A wins
   (auth "B" (tau (ref (Check n)))) ; B says that A loses (check)
   (after 10 (withdraw "A"))))      ; B is late


(define (Check n)
  (choice
   (revealif (b) (pred (and (!= b n) (between b 0 2))) (withdraw "B"))
   (after 10 (withdraw "A"))))

(contract (pre
           (deposit "A" 1 "txA@0")
           (deposit "B" 1 "txB@0")
           (secret "B" b "f9292914bfd27c426a23465fc122322abbdb63b7"))
          (choice
           (auth "A" (tau (ref (Bet 0)))) ; A chooses 0
           (auth "A" (tau (ref (Bet 1)))) ; A chooses 1
           (auth "A" (tau (ref (Bet 2)))) ; A chooses 2
           (after 10 (withdraw "B"))   ; A is late
           )

          (check-liquid))