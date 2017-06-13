#lang pollen

◊(define ($ . xs)
  `(mathjax ,(apply string-append `("$" ,@xs "$"))))
◊(define ($$ . xs)
  `(mathjax ,(apply string-append `("$$" ,@xs "$$"))))

◊span[#:class "mcqueen"]{Notes}
◊span[#:class "mcduke"]{06.12.17}


◊(nobar)

◊;---------- START

◊topic{Intro}

This document represents the limits of my understading. I created it to help me combat the perils of my wicked mind.

◊topic{History}
