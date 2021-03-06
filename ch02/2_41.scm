(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
        (accumulate op initial (cdr sequence))))
)
(define (enumerate-interval n)
  (if (< n 1)
    '()
    (append (enumerate-interval (- n 1))
            (list n)))
)
(define (unique-pairs n)
  (accumulate append '() 
    (map
      (lambda (i)
        (map (lambda (j) (list j i))
          (enumerate-interval (- i 1))))
      (enumerate-interval n))
  )
)
(define (s-triple n s)
  (filter
    (lambda (triple)
      (let ((a1 (car triple))
            (a2 (cadr triple))
            (a3 (caddr triple)))
      (and (< a3 n)
           (< a2 a3))))
    (map (lambda (p) 
           (append p (list (- s (car p) (cadr p)))))
      (unique-pairs n))
  )
)
(s-triple 10 10)
