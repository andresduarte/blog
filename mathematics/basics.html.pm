#lang pollen

◊span[#:class "mcqueen"]{Basics}
◊span[#:class "mcduke"]{06.12.17}

◊(nobar)

◊;---------- START

◊section{Set}

Any well-defined collection of objects.

◊$${
  \begin{align*}
  \mathbb{R}  &: \text{set of all real numbers} 						 \\
  \mathbb{R ∖ Q}  &: \text{set of all irrational numbers} 	 \\
  \mathbb{Q}  &: \text{set of all rational numbers } 				\\
  \mathbb{Z}  &: \text{set of all integers} 					 \\
  \mathbb{N}  &: \text{set of all natural numbers}					 	\\
  \end{align*}
}

◊section{Real Numbers}
◊margin-note{Developed for mathematics.}
All numbers that can be found on the real line.

◊section{Irrational Numbers}
All real numbers that are not rational.

◊section{Rational Numbers}
◊margin-note{Developed for measurement.
The rational line is dense.}

All numbers of the form:
◊$${
  \frac{p}{q}
}
Where $p$,$q$ are integers and $q \not= 0$

◊section{Integers}
◊margin-note{Developed for money.}
All numbers that can be expressed without a fractional component.
◊$${
  \{\ldots , -2, -1, 0, 1, 2, \ldots \}
}


◊section{Natural Numbers}
◊margin-note{Developed for counting.}
All positive integers
◊$${
  \{1, 2, 3, 4, \ldots \}
}

◊section{Notation}
To denote a set with a small number of elements, we list it's elements and enclose them in curly brackets.
◊$${
	\{1,2,3,4,5\}
}
However except for finite sets with a small number of elements, sets are ebst described y the property that defines them. If $A(x)$ is some property, the set of all $x$ which satisfy $A(x)$ is denoted by.
◊$${
  \{x \mid A(x)\}
}
To restrict x to those which are members of a certain set $X$, we write:
◊$${
  \{x \in X \mid A(x)\}
}
