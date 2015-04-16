(load "lisp-unit")

(load "date")

(load "date-tests")

;; (in-package :date-tests)

;; (run-tests)

(lisp-unit:run-tests :all :date-tests)
