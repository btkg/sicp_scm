(define 
    g
    (cons (list 1 2) (list 3 4))
)
(define (count-leaves x)
    (cond ((null? x) 0)
          ((not (pair? x)) 1)
          (else 
                (+ 
                   (count-leaves (car x))
                   (count-leaves (cdr x))
                )
          )
    )
)
(car g)
(cdr g)
(length g)
(count-leaves g)
