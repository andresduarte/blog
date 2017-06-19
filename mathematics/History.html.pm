#lang pollen

◊(define ($ . xs)
  `(mathjax ,(apply string-append `("$" ,@xs "$"))))
◊(define ($$ . xs)
  `(mathjax ,(apply string-append `("$$" ,@xs "$$"))))

◊span[#:class "mcqueen"]{History}
◊span[#:class "mcduke"]{06.13.17}


◊(nobar)

◊;---------- START
◊section{◊span[#:class "mcduke"]{3100 BC}}
◊margin-note{Discrete numbers}
Cognitive concept of counting is formalized.
◊margin-note{Continuous numbers}
Cognitive concept of measurement is formalized.

◊section{◊span[#:class "mcduke"]{300 BC}}

◊em{Euclid's Elements}

The theorem is born.

◊section{◊span[#:class "mcduke"]{AD 1600}}

Calculus and Probability Theory.

◊section{◊span[#:class "mcduke"]{AD 1800}}
◊margin-note{Real numbers system}
Connection between discrete and continuous numbers is formalized.
◊bullet-list{
  ◊margin-note{easy}
  Constructing rationals out of integers.


  ◊margin-note{hard}
  Constructing reals out of rationals.

}

◊section{◊span[#:class "mcduke"]{AD 1920}}

◊em{Banach-Tarski Paradox}

It's Possile to cut a sphere in a way such that you can reassemble it into two spheres of identical size and shape.

◊section{◊span[#:class "mcduke"]{AD 1980}}

Math is re-defined as the ◊em{science of patterns}. The process of making logical deductions from elemental concepts.
