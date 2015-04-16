(load "lisp-unit")

(use-package :lisp-unit)

(setq *print-failures* t)

(load "my-max")

(load "my-max-test")

(run-tests)

(print-errors *)
