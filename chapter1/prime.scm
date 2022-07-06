;; [求数的平方]

(define (square x)
  (* x x))

;; P33 - [求最小因子]

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((= (square test-divisor) n) n)
        ((= (remainder n test-divisor) 0) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

;; P33 - [利用最小因子，判断是否为素数]

(define (prime? n)
  (= n (smallest-divisor n)))