(define (square-list tree)
    (cond 
        ((null? tree) ())
        ((not (pair? (car tree)))
            (cons (square (car tree))
                  (square-list (cdr tree))))
        (else
            (cons (square-list (car tree))
                  (square-list (cdr tree)))
        )
    )
)
(define (square-list-map tree)
    (map
        (lambda (subtree)
            (if (pair? subtree)
                (square-list-map subtree)
                (square subtree)))
        tree
    )
)
(square-list (list 1 (list 2 (list 3 4) 5) (list 6 7)))
(square-list-map (list 1 (list 2 (list 3 4) 5) (list 6 7)))
