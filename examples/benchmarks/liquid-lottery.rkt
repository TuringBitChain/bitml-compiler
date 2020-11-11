#lang bitml

(debug-mode)
(verification-only)

(participant "A" "029c5f6f5ef0095f547799cb7861488b9f4282140d59a6289fbc90c70209c1cced")
(participant "B" "022c3afb0b654d3c2b0e2ffdcf941eaf9b6c2f6fcf14672f86f7647fa7b817af30")

(contract (pre
           (deposit "A" 3 "txA@0")(secret "A" a "9804ebb0fc4a8329981dd33aaff32b6cb579580a")
           (deposit "B" 3 "txB@0")(secret "B" b "183c86e0a286ac99ad8cf5c4cde36511181ffbd5"))
         
          (split
           (2 -> (choice
                  (revealif (b) (pred (between b 0 1)) (withdraw "B"))
                  (after 10 (withdraw "A"))))
           (2 -> (choice
                  (reveal (a) (withdraw "A"))
                  (after 10 (withdraw "B"))))
           (2 -> (choice
                  (revealif (a b) (pred (= a b)) (withdraw "A"))
                  (revealif (a b) (pred (!= a b)) (withdraw "B"))
                  (after 10 (split (1 -> (withdraw "A")) (1 -> (withdraw "B")))))))

          (check-liquid))