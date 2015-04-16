# lisp-unit-study
study lisp-unit which will be used in my future project

## my-max test

[lisp-unit-study]$ clisp run-my-max-tests.lisp 
 | Failed Form: (MY-SQRT (* I I))
 | Expected 4 but saw 8
 | I => 4
 |
 | Failed Form: (MY-SQRT (* I I))
 | Expected 3 but saw 9/2
 | I => 3
 |
 | Failed Form: (MY-SQRT (* I I))
 | Expected 1 but saw 1/2
 | I => 1
 |
TEST-LOOP-ASSERTION: 2 assertions passed, 3 failed.

 | Failed Form: NIL
 | Expected T but saw NIL
 |
ASSERT-TRUE-TEST: 0 assertions passed, 1 failed.

 | Failed Form: (MY-MAX 3 2)
 | Expected 2 but saw 3
 |
FAILURE-TEST-MY-MAX: 0 assertions passed, 1 failed.

 | Failed Form: (MY-MAX 3 5)
 | Expected 3 but saw 5
 |
NEGATIVE-TEST-MY-MAX: 0 assertions passed, 1 failed.

TEST-MY-MAX: 2 assertions passed, 0 failed.

Unit Test Summary
 | 10 assertions total
 | 4 passed
 | 6 failed
 | 0 execution errors
 | 0 missing tests

*** - NO-APPLICABLE-METHOD: When calling
      #<STANDARD-GENERIC-FUNCTION PRINT-ERRORS> with arguments (NIL), no
      method is applicable.
[ lisp-unit-study]$ 



## using unittest in package

[ lisp-unit-study]$ clisp run-date-tests.lisp 

2 
4 
 | Failed Form: (DATE:STRING->DATE 4)
 | Expected 3 but saw 4
 |
TEST-STRING->DATE: 1 assertions passed, 1 failed.


2 
5 
TEST-DATE->STRING: 2 assertions passed, 0 failed.

Unit Test Summary
 | 4 assertions total
 | 3 passed
 | 1 failed
 | 0 execution errors
 | 0 missing tests

[ lisp-unit-study]$ 

## using tags to organize tests
[ lisp-unit-study]$ clisp run-tag-tests.lisp 
SUBTRACT-INTEGER: 3 assertions passed, 0 failed.

ADD-INTEGER: 3 assertions passed, 0 failed.

Unit Test Summary
 | 6 assertions total
 | 6 passed
 | 0 failed
 | 0 execution errors
 | 0 missing tests

SUBTRACT-COMPLEX: 3 assertions passed, 0 failed.

SUBTRACT-FLOAT: 3 assertions passed, 0 failed.

SUBTRACT-INTEGER: 3 assertions passed, 0 failed.

Unit Test Summary
 | 9 assertions total
 | 9 passed
 | 0 failed
 | 0 execution errors
 | 0 missing tests

[ lisp-unit-study]$ 
