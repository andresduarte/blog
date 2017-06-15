#lang pollen

◊(define ($ . xs)
  `(mathjax ,(apply string-append `("$" ,@xs "$"))))
◊(define ($$ . xs)
  `(mathjax ,(apply string-append `("$$" ,@xs "$$"))))

◊span[#:class "mcqueen"]{History}
◊span[#:class "mcduke"]{06.13.17}


◊(nobar)

◊;---------- START

◊section{Euclid's Elements}

The theorem is born.

◊section{◊span[#:class "mcduke"]{1600's}}

Calculus and Probability Theory.

◊section{◊span[#:class "mcduke"]{1920's}}

◊em{Banach-Tarski Paradox}

It's Possile to cut a sphere in a way such that you can reassemble it into two spheres of identical size and shape.

◊section{◊span[#:class "mcduke"]{1980's}}

Math is re-defined as the ◊em{science of patterns}. The process of making logical deductions from elemental concepts.
