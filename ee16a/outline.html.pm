#lang pollen

◊;---------- START

◊(nobar)◊(nobar)
◊mono{column space}

  ◊right-note{◊${A \in \mathbb{R}^{m \times n}}}
  ◊indented{
    ◊${C(A) = span(v_1, v_2, \dots, v_n)}
    ◊red-light{the span of the column vectors of a matrix}
  }

◊(nobar)◊(nobar)
◊mono{basis}

  ◊indented{
    ◊red-light{ordered set of linearly independent vectors that span a vector space or subspace}
  }

◊(nobar)◊(nobar)
◊mono{nullspace}

  ◊right-note{◊${A \in \mathbb{R}^{m \times n}}}
  ◊indented{
    ◊${N(A)= \{\vec{x} | A \vec{x} = \vec{0}, \vec{x} \in \mathbb{R}^n\}}
    ◊red-light{set of input vectors that get mapped to 0 by A}
    ◊mono{◊yellow_wash{dimension}} ◊mono{at most n, only m if A is the zero matrix}
  }

◊(nobar)◊(nobar)
◊mono{◊yellow_wash{computing}} ◊mono{nullspace}
  ◊indented{
    ◊red-light{solve Ax = 0}
  }

◊(nobar)◊(nobar)
◊mono{rank-nullity theorem}

  ◊indented{
    ◊${n - dim(span(A)) = dim(N(A))}
    ◊red-light{loss of dimensionality from input space to output space shows up in nullspace}
  }

◊(nobar)◊(nobar)
◊mono{rank}

  ◊indented{
    ◊red-light{dimension of the span of the columns of A}
    ◊mono{◊yellow_wash{=}} ◊mono{number of linearly independent columns of A}
  }
