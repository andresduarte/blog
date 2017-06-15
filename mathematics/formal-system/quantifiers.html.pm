#lang pollen

◊(define ($ . xs)
  `(mathjax ,(apply string-append `("$" ,@xs "$"))))
◊(define ($$ . xs)
  `(mathjax ,(apply string-append `("$$" ,@xs "$$"))))

◊span[#:class "mcqueen"]{Quantifiers}
◊span[#:class "mcduke"]{06.14.17}


◊(nobar)

◊;---------- START

Language element that binds the variables in a logical proposition.

◊section{Universal Quantifier}
◊margin-note{$ \forall $}
For all

◊section{Existential Quantifier}
◊margin-note{$ \exists $}
There exists

◊section{Uniqueness Quantifier}
◊margin-note{$ \exists! $}
There is one and only one
