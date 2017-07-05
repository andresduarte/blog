#lang pollen

◊span[#:class "mcqueen"]{Proof}
◊span[#:class "mcduke"]{06.14.17}
s
◊(nobar)

◊;---------- START

◊section{By Contradiction}
Good for proving something doesn't exist and for when you don't know where to start.

◊numbered-list{
  To proof $\phi$ assume $\neg \phi$


  Reason until you arrive at a ◊em{false} conclusion.


  ◊margin-note{A ◊em{true}  assumption cannot lead to a ◊em{false} conclusion}
  Assumption  $\neg \phi$ must therefore be ◊em{false}


  In other words: $\phi$ is ◊em{true}
}

◊section{By Counterexample}
We can prove that a property is not true by providing an example where it does not hold.
◊numbered-list{
  State counterexample.


  Explain why it is a counterexample.
}

◊section{Implication}
◊numbered-list{
  Assume antecedent


  Deduce consequent
}

◊section{Fundamental Theorem of Arithmetic}
Every natural number greater than $1$ can be represented ◊strong{uniquely}, apart from rearrangement, as a product of one or more primes.

◊section{Basic Properties of Divisibility}
Let $a$,$b$,$c$,$d$ be integers, $a \not= 0$. Then:
◊bullet-list{
  $a \mid 0$, $a \mid a$


  $a \mid 1 \iff a = \pm 1$


  $ c \not= 0 \wedge  a \mid b \wedge c \mid d \implies ac \mid bd$


  $ b \not= 0 \wedge a \mid b \wedge b \mid c \implies a \mid c$


  $a \mid b \wedge b \mid a \iff a= \pm b$


  $b \not= 0 \wedge a \mid b \implies \vert a \vert \geq \vert b \vert$


  $a \mid b \wedge a \mid c \implies a \mid (bx+cy)$, $\forall x,y \in \mathbb{Z}$
}

◊section{Euclid's Lemma}

◊margin-note{Quotient Remainder Theorem}
◊strong{Theorem 001}
Let $a,b$ be integers $b>0$ Then there are unique integers $q,r$, such that $a=q*b+r$ and $0 \geq r \geq b$
◊margin-note{$\square$}
◊em{Proof.} Theorem: Let $a,b$ be intergers
