#lang racket/base
(require "scribblings/pollen-rkt.scrbl")
(provide (all-from-out "scribblings/pollen-rkt.scrbl"))
(require pollen/unstable/pygments)
(provide (all-from-out pollen/unstable/pygments))
(provide pdf-thumbnail-link)
(provide $)
(provide $$)


(define ($ . xs)
  `(mathjax ,(apply string-append `("$" ,@xs "$"))))
(define ($$ . xs)
  `(mathjax ,(apply string-append `("$$" ,@xs "$$"))))
