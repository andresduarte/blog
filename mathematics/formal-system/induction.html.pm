#lang pollen

◊red-title{Induction}
◊small-num{06.14.17}

◊(nobar)

◊;---------- START

Principle of Induction Let $P(n)$ be a predicate. If

◊bullet-list{
  $P(0)$ is $true$, and


  ◊margin-note{Common variant : $\forall n \in \mathbb{N} \geq N_0, P(n) \implies P(n+1)$}
  $\forall n \in \mathbb{N}, P(n) \implies P(n+1)$


  then $P(n)$ is true $\forall n \in \mathbb{N}$
}

◊(nobar)
◊(nobar)

Template for Induction Proofs
◊bullet-list{
  State proof uses induction


  Define appropriate predicate $P(n)$


  ◊margin-note{Base case}
  Prove that $P(0)$ is $true$


  ◊margin-note{Inductive step}
  Prove that $\forall n \in \mathbb{N}, P(n) \implies P(n+1)$


  Invoke induction
}


◊section{Odd Ends}
◊bullet-list{
  $\phi \implies \psi \wedge \theta$ is equivalent to $\phi \implies \psi \wedge \phi \implies \theta$


  $ \neg P \wedge \neg Q$ is equivalent to $\neg[P \wedge Q]$


  It's possible to prove an existential statement by finding an object that satisfies the property but it's not necessary.


  Sometimes it's non-obvious that a statement is an existential statement.


  Numerical Solutions give you answers but they don't give you understanding.


  To prove that something is ◊em{false} you can prove that it's negation is true.
}

◊section{Positive Statement}
◊margin-note{It's often necessary that you say what is rather than what is ◊strong{not}}
Statement without a negation symbol.

◊section{Equation}
Mathematical expression that two or more quantities are equal.

◊section{Identity}
Mathematical expression that two or more quantities are equal, for all values of $n$.

◊section{Division}
◊margin-note{$a$ divides $b$}
$a|b$ if $b=ka$ for some integer $k$.

◊section{Prime Number}
◊margin-note{$1$ is neither ◊em{prime} nor ◊em{composite}}
Positive integer greater than $1$ whose only divisors are $1$ and itself.

◊section{Composite Number}
◊margin-note{Composite Numbers are necessarily not prime.}
Positive integer greater than $1$ of the form $C_n= p*q$ where $p$,$q$ are two smaller positive integers.

◊section{Conjecture}
Proposition, consistent with known data, for which no proof has bbeen found.

◊section{Theorem}
Proposition that has been proved on the basis of previously estalished statements.

◊section{Lemma}
Short theorem used in proving a larger theorem.

◊section{Irreducible Fraction}
Fraction $p/q$ for which $p$,$q$ are relatively prime.

◊section{Relatively Prime}
Two integers are relatively prime if they share no common positive divisors except $1$.


◊section{Prime Decomposition}
The factorization of a number into its constituent primes.

◊section{Factor}
◊margin-note{Also called a ◊strong{divisor}}
The factor of a number $n$ is a number $d$ that divides $n$
◊$${
  d \mid n
}

◊section{Square Number}
◊margin-note{Also called a ◊strong{perfect square}}
Number of the form $S_n= n^2$, where $n$ is an integer.

◊section{Even Number}
Integer of the form $n=2k$, where k is an integer.

◊section{Number Theory}
The study of the properties of natural numbers.
