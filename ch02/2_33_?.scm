(define (accumulate op initial sequence)
    (if (null? sequence)
        initial
        (op (car sequence)
            (accumulate op 
                initial 
                (cdr sequence)))))

(define (map p sequence)
    (accumulate (lambda (x y) <>) () sequence))

(define (append seq1 seq2)
    (accumulate cons (seq1) (seq2)))

(define (length sequence)
    (accumulate ⟨??⟩ 0 sequence))
