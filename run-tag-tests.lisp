(load "lisp-unit")

(use-package :lisp-unit)

(load "tag-tests")

(setq *print-summary* t)

(run-tags '(:integer))

(run-tags '(:subtract))
