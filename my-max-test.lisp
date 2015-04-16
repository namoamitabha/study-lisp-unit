(define-test test-my-max
  (assert-equal 5 (my-max 2 5))
  (assert-equal 4 (my-max 1 4)))

(define-test negative-test-my-max
  (assert-equal 3 (my-max 3 5)))

(define-test failure-test-my-max
  (assert-equal 2 (my-max 3 2)))

(define-test assert-true-test
  (assert-true t))

(define-test assert-true-test
  (assert-true nil))

(defun my-sqrt (n) (/ n 2))

(define-test test-loop-assertion
  (dotimes (i 5)
    (assert-equal i (my-sqrt (* i i)) i)))
