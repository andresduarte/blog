#lang pollen

◊(define ($ . xs)
  `(mathjax ,(apply string-append `("$" ,@xs "$"))))
◊(define ($$ . xs)
  `(mathjax ,(apply string-append `("$$" ,@xs "$$"))))

◊span[#:class "mcqueen"]{Intro - Formal Systems}
◊span[#:class "mcduke"]{06.14.17}


◊(nobar)

◊;---------- START

Every Key statement of mathematics is a positive or negative version of $4$ linguistic forms.

◊bullet-list{
  Object $P$ has property $Q$.


  Every object of type $P$ has Property $Q$.


  There exists an object of type $P$ having property $Q$.


  If statement $P$, then statement $Q$.
}

Statements can be related via ◊strong{logical connectives}.
