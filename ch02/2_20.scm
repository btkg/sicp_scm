(define (same-parity h . e)
    (cons h (filter (if (odd? h) odd? even?) e))
)
(same-parity 2 3 4 5 6 7)
