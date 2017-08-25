(define (sum-of-squares a b) (+ (* a a) (* b b)))

(define (sum-of-big a b c) 
    (cond ((or 
             (and (> a b) (> b c)) 
             (and (> b a) (> a c))
           ) 
           (sum-of-squares a b))
          ((and (> a b) (> c b)) (sum-of-squares a c)) 
          ((and (> b a) (> c a)) (sum-of-squares b c)) 
    )
)

(sum-of-big 1 2 3)
(sum-of-big 2 3 1)
(sum-of-big 3 1 2)
(sum-of-big 1 3 2)
(sum-of-big 2 1 3)
(sum-of-big 3 2 1)

