#lang pollen

◊(define ($ . xs)
  `(mathjax ,(apply string-append `("$" ,@xs "$"))))
◊(define ($$ . xs)
  `(mathjax ,(apply string-append `("$$" ,@xs "$$"))))

◊span[#:class "mcqueen"]{Main Parts}
◊span[#:class "mcduke"]{06.14.17}


◊(nobar)

◊;---------- START

◊section{Proposition}
Mathematical statement that is either true or false

◊section{Predicate}
Proposition whose truth depends on the value of one or more variables

◊section{Proof}
Process of verifying the truth of a proposition by a chain of logical deduction from a base set of axioms.

◊section{Direct}
Way of determing the truth or falsehood of a proposition by a straightforward combination of established facts.

◊section{Indirect}
Assume desired conclusion is ◊em{false}, then show that assumption leads to absurdity or contradiction. Meaning assumption must be wrong and desired conclusion must actually be ◊em{true}. Indirect proofs rely on the inference rule.
◊$${
  \frac{\neg P \implies false}{P}
}

◊section{Axiom}
Proposition, wihtout proof, regarded as self-evidently ◊em{true}.
◊bullet-list{
  Axioms are ◊em{consistent} if no proposition can be proven to be both ◊em{true} and ◊em{false}.


  Axioms are ◊em{complete} if every proposition can be proved or disproved.
}

◊section{Tautology}
◊margin-note{Every ◊em{tautology} has an associated inference rule}
Logical form that is true for every possible interpretation.

◊section{Inference Rules}
Logical form consisting of a function which takes premises, analyzes their syntax, and returns a conclusion.

◊section{Modus Ponens}
◊bullet-list{
  If $P \implies Q$ is $true$ for every possile interpretation.
}

◊section{De Morgan's Laws}
The negation of a conjunction is the disjunction of the negations; and the negation of a disjunction is the conjunction of the negations.
◊$${
  \begin{split}
  \neg(P \wedge Q) &\iff (\neg P) \vee (\neg Q) \\
  \neg(P \vee Q) &\iff (\neg P) \wedge (\neg Q)
  \end{split}
}
◊margin-note{Conditional statements are not equivalent to their converse.
◊$${P \implies Q {\rlap{\hskip 1.3em/}}\iff Q \implies P}

Conditional statements ◊strong{are} equivalent to their contrapositive.
◊$${P \implies Q \iff \neg Q \implies \neg P}}
◊section{Converse}

Flipped conditional statement.

◊section{Contrapositive}
Inverted converse of conditional statement.
