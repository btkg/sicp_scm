(define x (cons (cons (list 1 3) (list 5 7)) 9))
(define y (cons 1 (cons 2 (cons 3 (cons 4 (cons 5 (list 6 7)))))))

(cdr (cdr (car x)))
(cdr (cdr (cdr (cdr (cdr (cdr y))))))