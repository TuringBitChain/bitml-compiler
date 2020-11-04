#lang bitml

(participant "A0" "029c5f6f5ef0095f547799cb7861488b9f4282140d59a6289fbc90c70209c1cced")
(participant "A1" "022c3afb0b654d3c2b0e2ffdcf941eaf9b6c2f6fcf14672f86f7647fa7b817af30")
(participant "A2" "022c3afb0b654d3c2b0e2ffdcf941eaf9b6c2f6fcf14672f86f7647fa7b817af31")
(participant "A3" "022c3afb0b654d3c2b0e2ffdcf941eaf9b6c2f6fcf14672f86f7647fa7b817af32")
(participant "A4" "022c3afb0b654d3c2b0e2ffdcf941eaf9b6c2f6fcf14672f86f7647fa7b817af33")

(debug-mode)

(define (C00) (choice (reveal (a0) (ref (C11))) (after 10 (tau (ref (C10))))))

(define (C11) (choice (reveal (a1) (ref (C23))) (after 20 (tau (ref (C21))))))

(define (C23) (choice (reveal (a2) (ref (C37))) (after 30 (tau (ref (C33))))))

(define (C37) (choice (reveal (a3) (ref (C415))) (after 40 (tau (ref (C47))))))

(define (C415) (choice (reveal (a4) (ref (W31))) (after 50 (ref (W15)))))

(define (C47) (choice (reveal (a4) (ref (W23))) (after 50 (ref (W7)))))

(define (C33) (choice (reveal (a3) (ref (C411))) (after 40 (tau (ref (C43))))))

(define (C411) (choice (reveal (a4) (ref (W27))) (after 50 (ref (W11)))))

(define (C43) (choice (reveal (a4) (ref (W19))) (after 50 (ref (W3)))))

(define (C21) (choice (reveal (a2) (ref (C35))) (after 30 (tau (ref (C31))))))

(define (C35) (choice (reveal (a3) (ref (C413))) (after 40 (tau (ref (C45))))))

(define (C413) (choice (reveal (a4) (ref (W29))) (after 50 (ref (W13)))))

(define (C45) (choice (reveal (a4) (ref (W21))) (after 50 (ref (W5)))))

(define (C31) (choice (reveal (a3) (ref (C49))) (after 40 (tau (ref (C41))))))

(define (C49) (choice (reveal (a4) (ref (W25))) (after 50 (ref (W9)))))

(define (C41) (choice (reveal (a4) (ref (W17))) (after 50 (ref (W1)))))

(define (C10) (choice (reveal (a1) (ref (C22))) (after 20 (tau (ref (C20))))))

(define (C22) (choice (reveal (a2) (ref (C36))) (after 30 (tau (ref (C32))))))

(define (C36) (choice (reveal (a3) (ref (C414))) (after 40 (tau (ref (C46))))))

(define (C414) (choice (reveal (a4) (ref (W30))) (after 50 (ref (W14)))))

(define (C46) (choice (reveal (a4) (ref (W22))) (after 50 (ref (W6)))))

(define (C32) (choice (reveal (a3) (ref (C410))) (after 40 (tau (ref (C42))))))

(define (C410) (choice (reveal (a4) (ref (W26))) (after 50 (ref (W10)))))

(define (C42) (choice (reveal (a4) (ref (W18))) (after 50 (ref (W2)))))

(define (C20) (choice (reveal (a2) (ref (C34))) (after 30 (tau (ref (C30))))))

(define (C34) (choice (reveal (a3) (ref (C412))) (after 40 (tau (ref (C44))))))

(define (C412) (choice (reveal (a4) (ref (W28))) (after 50 (ref (W12)))))

(define (C44) (choice (reveal (a4) (ref (W20))) (after 50 (ref (W4)))))

(define (C30) (choice (reveal (a3) (ref (C48))) (after 40 (tau (ref (C40))))))

(define (C48) (choice (reveal (a4) (ref (W24))) (after 50 (ref (W8)))))

(define (C40) (choice (reveal (a4) (ref (W16))) (after 50 (ref (W0)))))

(define (W0) 
 (split (1 -> (withdraw "A0"))(1 -> (withdraw "A1"))(1 -> (withdraw "A2"))(1 -> (withdraw "A3"))(1 -> (withdraw "A4"))))

(define (W1)
 (split (5.0 -> (withdraw "A0"))))

(define (W2)
 (split (5.0 -> (withdraw "A1"))))

(define (W3)
 (split (2.5 -> (withdraw "A0"))(2.5 -> (withdraw "A1"))))

(define (W4)
 (split (5.0 -> (withdraw "A2"))))

(define (W5)
 (split (2.5 -> (withdraw "A0"))(2.5 -> (withdraw "A2"))))

(define (W6)
 (split (2.5 -> (withdraw "A1"))(2.5 -> (withdraw "A2"))))

(define (W7)
 (split (1.68 -> (withdraw "A0"))(1.66 -> (withdraw "A1"))(1.66 -> (withdraw "A2"))))

(define (W8)
 (split (5.0 -> (withdraw "A3"))))

(define (W9)
 (split (2.5 -> (withdraw "A0"))(2.5 -> (withdraw "A3"))))

(define (W10)
 (split (2.5 -> (withdraw "A1"))(2.5 -> (withdraw "A3"))))

(define (W11)
 (split (1.68 -> (withdraw "A0"))(1.66 -> (withdraw "A1"))(1.66 -> (withdraw "A3"))))

(define (W12)
 (split (2.5 -> (withdraw "A2"))(2.5 -> (withdraw "A3"))))

(define (W13)
 (split (1.68 -> (withdraw "A0"))(1.66 -> (withdraw "A2"))(1.66 -> (withdraw "A3"))))

(define (W14)
 (split (1.68 -> (withdraw "A1"))(1.66 -> (withdraw "A2"))(1.66 -> (withdraw "A3"))))

(define (W15)
 (split (1.25 -> (withdraw "A0"))(1.25 -> (withdraw "A1"))(1.25 -> (withdraw "A2"))(1.25 -> (withdraw "A3"))))

(define (W16)
 (split (5.0 -> (withdraw "A4"))))

(define (W17)
 (split (2.5 -> (withdraw "A0"))(2.5 -> (withdraw "A4"))))

(define (W18)
 (split (2.5 -> (withdraw "A1"))(2.5 -> (withdraw "A4"))))

(define (W19)
 (split (1.68 -> (withdraw "A0"))(1.66 -> (withdraw "A1"))(1.66 -> (withdraw "A4"))))

(define (W20)
 (split (2.5 -> (withdraw "A2"))(2.5 -> (withdraw "A4"))))

(define (W21)
 (split (1.68 -> (withdraw "A0"))(1.66 -> (withdraw "A2"))(1.66 -> (withdraw "A4"))))

(define (W22)
 (split (1.68 -> (withdraw "A1"))(1.66 -> (withdraw "A2"))(1.66 -> (withdraw "A4"))))

(define (W23)
 (split (1.25 -> (withdraw "A0"))(1.25 -> (withdraw "A1"))(1.25 -> (withdraw "A2"))(1.25 -> (withdraw "A4"))))

(define (W24)
 (split (2.5 -> (withdraw "A3"))(2.5 -> (withdraw "A4"))))

(define (W25)
 (split (1.68 -> (withdraw "A0"))(1.66 -> (withdraw "A3"))(1.66 -> (withdraw "A4"))))

(define (W26)
 (split (1.68 -> (withdraw "A1"))(1.66 -> (withdraw "A3"))(1.66 -> (withdraw "A4"))))

(define (W27)
 (split (1.25 -> (withdraw "A0"))(1.25 -> (withdraw "A1"))(1.25 -> (withdraw "A3"))(1.25 -> (withdraw "A4"))))

(define (W28)
 (split (1.68 -> (withdraw "A2"))(1.66 -> (withdraw "A3"))(1.66 -> (withdraw "A4"))))

(define (W29)
 (split (1.25 -> (withdraw "A0"))(1.25 -> (withdraw "A2"))(1.25 -> (withdraw "A3"))(1.25 -> (withdraw "A4"))))

(define (W30)
 (split (1.25 -> (withdraw "A1"))(1.25 -> (withdraw "A2"))(1.25 -> (withdraw "A3"))(1.25 -> (withdraw "A4"))))

(define (W31)
 (split (1.0 -> (withdraw "A0"))(1.0 -> (withdraw "A1"))(1.0 -> (withdraw "A2"))(1.0 -> (withdraw "A3"))(1.0 -> (withdraw "A4"))))

(contract
 (pre (deposit "A0" 1 "txA@0")(secret "A0" a0 "000a")
      (deposit "A1" 1 "txB@0")(secret "A1" a1 "000b")
      (deposit "A2" 1 "txC@0")(secret "A2" a2 "000c")
      (deposit "A3" 1 "txD@0")(secret "A3" a3 "000d")
      (deposit "A4" 1 "txE@0")(secret "A4" a4 "000e"))
 
 (ref (C00))

 (check-liquid))