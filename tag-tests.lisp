(defun add-integer (integer1 integer2)
  "Add 2 integer numbers"
  (check-type integer1 integer)
  (check-type integer2 integer)
  (+ integer1 integer2))

(defun subtract-integer (integer1 integer2)
  "Subtract 2 integer numbers"
  (check-type integer1 integer)
  (check-type integer2 integer)
  (- integer1 integer2))

(define-test add-integer
  "Test add-integer for values and errors."
  (:tag :add :integer)
  (assert-eql 3 (add-integer 1 2))
  (assert-error 'type-error (add-integer 1.0 2))
  (assert-error 'type-error (add-integer 1 2.0)))

(define-test subtract-integer
  "Test subtract-integer for values and errors."
  (:tag :subtract :integer)
  (assert-eql 1 (subtract-integer 3 2))
  (assert-error 'type-error (subtract-integer 3.0 2))
  (assert-error 'type-error (subtract-integer 2 3.0)))

(defun add-float (float1 float2)
  "Add 2 floating point numbers"
  (check-type float1 float)
  (check-type float2 float)
  (+ float1 float2))

(defun subtract-float (float1 float2)
  "Subtract 2 floating point numbers"
  (check-type float1 float)
  (check-type float2 float)
  (- float1 float2))

(define-test add-float
  "Test add-float for values and errors."
  (:tag :add :float)
  (assert-eql 3.0 (add-float 1.0 2.0))
  (assert-error 'type-error (add-float 1.0 2))
  (assert-error 'type-error (add-float 1 2.0)))

(define-test subtract-float
  "Test subtract-float for values and errors."
  (:tag :subtract :float)
  (assert-eql 1.0 (subtract-float 3.0 2.0))
  (assert-error 'type-error (subtract-float 3.0 2))
  (assert-error 'type-error (subtract-float 2 3.0)))

(defun add-complex (complex1 complex2)
  "Add 2 complex numbers"
  (check-type complex1 complex)
  (check-type complex2 complex)
  (+ complex1 complex2))

(defun subtract-complex (complex1 complex2)
  "Subtract 2 complex numbers"
  (check-type complex1 complex)
  (check-type complex2 complex)
  (- complex1 complex2))

(define-test add-complex
  "Test add-complex for values and errors."
  (:tag :add :complex)
  (assert-eql #C(3 5) (add-complex #C(1 2) #C(2 3)))
  (assert-error 'type-error (add-integer #C(1 2) 3))
  (assert-error 'type-error (add-integer 1 #C(2 3))))

(define-test subtract-complex
  "Test subtract-complex for values and errors."
  (:tag :subtract :complex)
  (assert-eql #C(1 2) (subtract-complex #C(3 5) #C(2 3)))
  (assert-error 'type-error (subtract-integer #C(3 5) 2))
  (assert-error 'type-error (subtract-integer 2 #C(2 3))))
