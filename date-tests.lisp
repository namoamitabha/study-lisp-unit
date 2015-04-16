(defpackage :date-tests
  (:use :common-lisp :lisp-unit :date))

(in-package :date-tests)

(setq *print-failures* t)

(define-test test-date->string
  (assert-equal 2 (date->string 2))
  (assert-equal 5 (date->string 5)))

(define-test test-string->date
  (assert-equal 2 (string->date 2))
  (assert-equal 3 (string->date 4)))

;;(print-errors *)
