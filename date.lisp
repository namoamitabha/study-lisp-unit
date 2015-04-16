(defpackage :date
  (:use :common-lisp)
  (:export :date->string :string->date))

(in-package :date)

(defun date->string (date)
  (print date))

(defun string->date (string)
  (print string))
