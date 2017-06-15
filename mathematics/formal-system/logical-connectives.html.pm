#lang pollen

◊(define ($ . xs)
  `(mathjax ,(apply string-append `("$" ,@xs "$"))))
◊(define ($$ . xs)
  `(mathjax ,(apply string-append `("$$" ,@xs "$$"))))

◊span[#:class "mcqueen"]{Logical Connectives}
◊span[#:class "mcduke"]{06.14.17}


◊(nobar)

◊;---------- START

◊section{Negation}

◊margin-note{
  $P : \neg P$
}

Takes proposition $P$ to proposition $not$ $P$.

◊margin-note{ Table 1: truth table for negation}
◊slow-table{
  $\phi$ | $\neg \phi$
  T | F
  F | T
}

◊section{Conjunction}

◊margin-note{ $P \wedge Q$}
$P$ and $Q$

Commutative in mathematics.

◊margin-note{ Table 2: truth table for conjunction}
◊slow-table{
  $\phi$ | $\psi$ | $\phi \wedge \psi$
  T | T | T
  T | F | F
  F | T | F
  F | F | F
}

◊section{Disjunction}

◊margin-note{ $P \vee Q$}
$P$ or $Q$

Inclusive in mathematics.

◊margin-note{ Table 3: truth table for disjunction}
◊slow-table{
  $\phi$ | $\psi$ | $\phi \vee \psi$
  T | T | T
  T | F | T
  F | T | T
  F | F | F
}

◊section{Implication}

◊margin-note{ $P \implies Q$}
If $P$ then $Q$

Negation : $P \wedge \neg Q$

◊margin-note{ Table 4: truth table for implication}
◊slow-table{
  $\phi$ | $\psi$ | $\phi \implies \psi$
  T | T | T
  T | F | F
  F | T | T
  F | F | T
}

◊section{Equivalence}

◊margin-note{ $P \iff Q$}
$P$ if and only if $Q$

Negation : $P \wedge \neg Q$

◊margin-note{ Table 5: truth table for equivalence}
◊slow-table{
  $\phi$ | $\psi$ | $\phi \iff \psi$
  T | T | T
  T | F | F
  F | T | F
  F | F | T
}
