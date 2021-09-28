(define (add-rat x y)
    (make-rat (+ (* (numer x) (denom y))
                 (* (numer y) (denom x)))
              (* (denom x) (denom y))
    )
)
(define (sub-rat x y)
    (make-rat (- (* (numer x) (denom y))
                 (* (numer y) (denom x)))
              (* (denom x) (denom y))
    )
)
(define (mul-rat x y)
    (make-rat (* (numer x) (denom y))
              (* (denom x) (numer y))
    )
)
(define (equal-rat? x y)
    (= (* (numer x) (denom y))
       (* (numer y) (denom x))
    )
)
(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))
    )
)
(define (make-rat x y)
    (let  ((g (gcd x y)))
    (cons (/ x g) (/ y g)))
)
(define (numer x)
    (let ((g (gcd (car x) (cdr x))))
    (/ (car x) g))
)
(define (denom y)
    (let ((g (gcd (car y) (cdr y))))
    (/ (cdr y) g))
)
(define A
    (make-rat 1 2)
)
(define B
    (make-rat 1 4)
)
(add-rat A B)
