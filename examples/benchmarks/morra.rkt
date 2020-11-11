#lang bitml

(debug-mode)

(verification-only)

(participant "A" "029c5f6f5ef0095f547799cb7861488b9f4282140d59a6289fbc90c70209c1cced")
(participant "B" "022c3afb0b654d3c2b0e2ffdcf941eaf9b6c2f6fcf14672f86f7647fa7b817af30")

(define (C) (choice
             (reveal (a) (choice
                          (revealif (a b) (pred (!= a b)) (ref (C1)))
                          (revealif (a b) (pred (= a b)) (split (1 -> (withdraw "A")) (1 -> (withdraw "B"))))
                          (after 500000 (withdraw "A"))))
             (reveal (b) (choice
                          (revealif (a b) (pred (!= a b)) (ref (C1)))
                          (revealif (a b) (pred (= a b)) (split (1 -> (withdraw "A")) (1 -> (withdraw "B"))))
                          (after 500000 (withdraw "B"))))
             (after 500000 (split (1 -> (withdraw "A")) (1 -> (withdraw "B"))))))

(define (C1) (choice
              (reveal (a1) (choice
                            (revealif (a b a1) (pred (= a1 (+ a b))) (withdraw "A"))
                            (after 501000 (withdraw "B"))))
              (reveal (b1) (choice
                            (revealif (a b b1) (pred (= b1 (+ a b))) (withdraw "B"))
                            (after 501000 (withdraw "A"))))
              (after 501000 (split (1 -> (withdraw "A")) (1 -> (withdraw "B"))))))

(contract (pre
           (deposit "A" 1 "txA@0") (deposit "B" 1 "txB@0")
           (secret "B" b "f9292914bfd27c426a23465fc122322abbdb63b7")
           (secret "A" a "9804ebb0fc4a8329981dd33aaff32b6cb579580a")
           (secret "B" b1 "183c86e0a286ac99ad8cf5c4cde36511181ffbd5")
           (secret "A" a1 "14f06dde2fa12bd359ea0847de296f7b66a0f93f"))        

          (ref (C))
                   

          (check-liquid))