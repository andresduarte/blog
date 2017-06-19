#lang pollen

◊(define ($ . xs)
  `(mathjax ,(apply string-append `("$" ,@xs "$"))))
◊(define ($$ . xs)
  `(mathjax ,(apply string-append `("$$" ,@xs "$$"))))

◊span[#:class "mcqueen"]{Intro - Data Science}
◊span[#:class "mcduke"]{06.15.17}


◊(nobar)

◊;---------- START

◊margin-note{Dan Myers}
 When have you solved a problem, that was worth solving, that didn't require that you either filter out or go find information?

Statistics : the science of learning from data

R : most commonly used language in data science
