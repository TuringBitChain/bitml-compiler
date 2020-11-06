#lang racket/base

(require (for-syntax racket/base syntax/parse))

(define-syntax (pre stx) (raise-syntax-error 'bitml "wrong usage of pre" stx))
(define-syntax (choice stx) (raise-syntax-error 'bitml "wrong usage of choice" stx))
(define-syntax (-> stx) (raise-syntax-error 'bitml "wrong usage of ->" stx))
(define-syntax (putrevealif stx) (raise-syntax-error 'bitml "wrong usage of putrevealif" stx))
(define-syntax (put stx) (raise-syntax-error 'bitml "wrong usage of put" stx))
(define-syntax (revealif stx) (raise-syntax-error 'bitml "wrong usage of revealif" stx))
(define-syntax (reveal stx) (raise-syntax-error 'bitml "wrong usage of reveal" stx))
(define-syntax (split stx) (raise-syntax-error 'bitml "wrong usage of split" stx))
(define-syntax (withdraw stx) (raise-syntax-error 'bitml "wrong usage of withdraw" stx))
(define-syntax (after stx) (raise-syntax-error 'bitml "wrong usage of after" stx))
(define-syntax (auth stx) (raise-syntax-error 'bitml "wrong usage of auth" stx))
(define-syntax (tau stx) (raise-syntax-error 'bitml "wrong usage of tau" stx))

(define-syntax (define-rec stx) (raise-syntax-error 'bitml "wrong usage of define-rec" stx))

;operators for predicate in putrevealif
(define-syntax (btrue stx) (raise-syntax-error 'bitml "wrong usage of true" stx))
(define-syntax (band stx) (raise-syntax-error 'bitml "wrong usage of and" stx))
(define-syntax (bor stx) (raise-syntax-error 'bitml "wrong usage of or" stx))
(define-syntax (bnot stx) (raise-syntax-error 'bitml "wrong usage of not" stx))
(define-syntax (b= stx) (raise-syntax-error 'bitml "wrong usage of =" stx))
(define-syntax (b!= stx) (raise-syntax-error 'bitml "wrong usage of =" stx))
(define-syntax (b< stx) (raise-syntax-error 'bitml "wrong usage of <" stx))
(define-syntax (b<= stx) (raise-syntax-error 'bitml "wrong usage of <" stx))
(define-syntax (b+ stx) (raise-syntax-error 'bitml "wrong usage of +" stx))
(define-syntax (b- stx) (raise-syntax-error 'bitml "wrong usage of -" stx))
(define-syntax (bsize stx) (raise-syntax-error 'bitml "wrong usage of size" stx))
(define-syntax (pred stx) (raise-syntax-error 'bitml "wrong usage of pred" stx))
(define-syntax (between stx) (raise-syntax-error 'bitml "wrong usage of between" stx))

(define-syntax (strategy stx) (raise-syntax-error 'bitml "wrong usage of strategy" stx))
(define-syntax (b-if stx) (raise-syntax-error 'bitml "wrong usage of if" stx))  
(define-syntax (do-reveal stx) (raise-syntax-error 'bitml "wrong usage of do-reveal" stx))
(define-syntax (do-auth stx) (raise-syntax-error 'bitml "wrong usage of do-auth" stx))
(define-syntax (not-auth stx) (raise-syntax-error 'bitml "wrong usage of do-auth" stx))
(define-syntax (not-destroy stx) (raise-syntax-error 'bitml "wrong usage of not-destroy" stx))
(define-syntax (do-destroy stx) (raise-syntax-error 'bitml "wrong usage of do-destroy" stx))
(define-syntax (state stx) (raise-syntax-error 'bitml "wrong usage of state" stx))
(define-syntax (not-reveal stx) (raise-syntax-error 'bitml "wrong usage of not-reveal" stx))
(define-syntax (secrets stx) (raise-syntax-error 'bitml "wrong usage of secrets" stx))
(define-syntax (auto-generate-secrets stx) (raise-syntax-error 'bitml "wrong usage of auto-generate-secrets" stx))

(define-syntax (check-liquid stx) (raise-syntax-error 'bitml "wrong usage of check-liquid" stx))
(define-syntax (check stx) (raise-syntax-error 'bitml "wrong usage of check" stx))
(define-syntax (has-at-least stx) (raise-syntax-error 'bitml "wrong usage of has-at-least" stx))
(define-syntax (check-query stx) (raise-syntax-error 'bitml "wrong usage of check-query" stx))

(define-syntax (strip-auth stx) (raise-syntax-error 'bitml "wrong usage of strip-auth" stx))

(provide (all-defined-out))
