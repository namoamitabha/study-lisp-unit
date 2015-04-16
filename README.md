# lisp-unit-study
study lisp-unit which will be used in my future project


* test in slime
load lisp-unit
(load "lisp-unit")
(in-package :lisp-unit)

define test target
(defun my-max (a b)
  (if (> a b) a b))

define test case
(define-test test-my-max
  (assert-equal 5 (my-max 2 5)))

run test:
(run-tests '(test-my-max))
or 
(run-tests)

here is the log:
[3]> (load "lisp-unit")
;; Loading file git-root/lisp-unit-study/lisp-unit.lisp ...
;; Loaded file git-root/lisp-unit-study/lisp-unit.lisp
T
[4]> (in-package :lisp-unit)
#<PACKAGE LISP-UNIT>
LISP-UNIT[5]> (defun my-max (a b)
  (if (> a b) a b))

MY-MAX
LISP-UNIT[6]> (define-test test-my-max
  (assert-equal 5 (my-max 2 5)))
TEST-MY-MAX
LISP-UNIT[7]> (run-tests '(test-my-max))
Unit Test Summary
 | 1 assertions total
 | 1 passed
 | 0 failed
 | 0 execution errors
 | 0 missing tests

#<TEST-RESULTS-DB Total(1) Passed(1) Failed(0) Errors(0)>

LISP-UNIT[8]> (run-tests)
Unit Test Summary
 | 1 assertions total
 | 1 passed
 | 0 failed
 | 0 execution errors
 | 0 missing tests

#<TEST-RESULTS-DB Total(1) Passed(1) Failed(0) Errors(0)>

LISP-UNIT[9]> 

* test in package


* test 