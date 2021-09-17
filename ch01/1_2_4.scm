; 递归计算
; (define (expt b n)
;     (if (= n 0)
;         1
;         (* b (expt b (- n 1))))
; )

; 线性迭代
; (define (expt b n)
;     (expt-iter b n 1)
; )
; (define (expt-iter b counter product)
;     (if (= counter 0)
;         product
;         (expt-iter b
;             (- counter 1)
;             (* b product)
;         )
;     )
; )

; log n
(define (fast-expt b n)
    (cond ((= n 0) 1)
          ((even? n) (square (fast-expt b (/ n 2))))
          (else (* b (fast-expt b (- n 1))))
    )
)
(expt 2 20)
