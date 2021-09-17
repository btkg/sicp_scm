; 递归
; (define (factorial n)
;     (if (= n 1)
;         1
;         (* n (factorial (- n 1)))
;     )
; )

; 迭代
(define (factorial n)
    (define (fact-iter product counter max-count)
        (if (> counter max-count)
            product
            (fact-iter (* counter product)
                       (+ counter 1)
                       max-count))
    )
    (fact-iter 1 1 n)
)
(factorial 3)

; 树形递归
(define (fib n)
    (fib-iter 1 0 n)
)
(define (fib-iter a b count)
    (if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1)))
)
(fib 3)
