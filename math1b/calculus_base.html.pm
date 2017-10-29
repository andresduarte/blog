#lang pollen

◊;---------- START
◊(nobar)◊(nobar)
◊black-title{Monotonic Sequence Theorem}
  ◊indented{Every bounded, monotonic sequence is convergent.}

◊(nobar)
◊black-title{Geometric Series}

◊right-note{
  ◊red-light{convergent}
  ◊$${|r| < 1}
  ◊red-light{divergent}
  ◊$${|r| \geq 1}
}
◊mono{form}
  ◊$${\sum_{n =1}^\infty ar^{n-1} = a + ar + ar^2 + \dots}

◊mono{sum}
  ◊$${\sum_{n =1}^\infty ar^{n-1} = \frac{a}{1 - r}}

◊(nobar)
◊orange{●} ◊black-title{Test for Divergence}
  ◊$${\lim_{n \to \infty} a_n \neq 0 \implies \sum_{n=1}^{\infty}\ a_n\ \text{diverges}}

◊(nobar)
◊black-title{Properties of Sums}
  ◊$${
    \begin{align}

    \sum_{n=1}^{\infty}\ c a_n &= c \sum_{n=1}^{\infty}\ a_n
    \\
    \sum_{n=1}^{\infty}\ (a_n + b_n) &= \sum_{n=1}^{\infty}\ a_n + \sum_{n=1}^{\infty}\ b_n
    \\
    \sum_{n=1}^{\infty}\ (a_n - b_n) &= \sum_{n=1}^{\infty}\ a_n - \sum_{n=1}^{\infty}\ b_n

    \end{align}
  }

◊(nobar)
◊orange{●} ◊black-title{Integral Test}
  ◊right-note{
  ◊mono{◊yellow_wash{requirements}}
  ◊mono{
    continuous
    positive
    decreasing
  }
  }

  ◊$${\sum_{n=1}^{\infty} a_n\ \text{converges} \iff \int_{1}^{\infty} f(x) dx\ \text{converges}}
  ◊red-light{Remainder Estimate}
  ◊$${\int_{n+1}^{\infty} f(x)dx\ \leq\ R_n\ \leq\ \int_{n}^{\infty} f(x)dx}

◊(nobar)
◊black-title{p-series}
  ◊right-note{
    ◊red-light{convergent}
    ◊$${p > 1}
    ◊red-light{divergent}
    ◊$${p < 1}
  }
  ◊$${
    \begin{align}
    p > 1 &\implies \sum_{n=1}^{\infty} \frac{1}{n^p}\ \text{converges}
    \\
    p < 1 &\implies \sum_{n=1}^{\infty} \frac{1}{n^p}\ \text{diverges}
    \end{align}
  }

◊(nobar)◊(nobar)
◊orange{●} ◊black-title{Comparison Test}
  ◊right-note{
    ◊mono{◊yellow_wash{requirements}}
    ◊mono{
      positive
    }
  }

  ◊$${
    \begin{align}
      \sum b_n\ \text{converges}\ \wedge\ b_n \geq a_n\ \forall n &\implies \sum a_n\ \text{converges}
      \\
      \sum b_n\ \text{diverges}\ \wedge\ b_n \leq a_n\ \forall n &\implies \sum a_n\ \text{diverges}
    \end{align}
  }

◊(nobar)◊(nobar)
◊orange{●} ◊black-title{Limit Comparison Test} ◊red-light{LCT}
  ◊right-note{
    ◊mono{◊yellow_wash{requirements}}
    ◊mono{
      positive
    }
  }
  ◊$${\lim_{n \to \infty} \frac{a_n}{b_n} = c}
  ◊indented{where ◊${c} is a finite number and ◊${c > 0}, then either both series converge or both diverge}

  ◊mono{◊yellow_wash{addendum}}
  ◊indented{
    If ◊${c = 0} and ◊${b_n} converges then ◊${a_n} also converges.
    If ◊${c = \infty} and ◊${b_n} diverges then ◊${a_n} also diverges.
  }

◊(nobar)
◊orange{●} ◊black-title{Alternating Series Test} ◊red-light{AST}
  ◊right-note{
    ◊mono{◊yellow_wash{requirements}}
    ◊mono{
      positive
      decreasing
    }
  }
  If alternating series
  ◊$${
    \begin{align}
      \sum_{n=1}^{\infty} (-1)^{n-1} b_n = b_1 - b_2 + b_3 - b4 + \dots \quad b_n > 0
    \end{align}
  }
  satisfies
  ◊$${ b_{n+1} \leq b_{n}\ \forall n \quad \text{and} \quad \lim_{n \to \infty} b_n = 0
  }
  then
  ◊$${
    \sum_{n=1}^{\infty} (-1)^{n-1} b_n \quad \text{converges}
  }

◊(nobar)
◊red-light{Alternating Series Estimation Theorem} ◊${|R_n| = | s - s_n | \leq b_{n+1}}

◊black-title{Absolute Convergence}

  ◊$${
    \begin{align}
    \sum |a_n|\ \text{converges} &\implies \sum a_n\ \text{converges absolutely}
    \\[8pt]
    \sum a_n\ \text{converges absolutely} &\implies \sum a_n\ \text{converges}
    \end{align}
  }

◊(nobar)
◊orange{●} ◊black-title{Ratio Test}
  ◊$${
    \begin{align}
    \lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right| = L < 1 &\implies \sum_{n=1}^{\infty}\ \text{converges absolutely}
    \\[8pt]
    \lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right| = L > 1 &\implies \sum_{n=1}^{\infty}\ \text{diverges}
    \\[8pt]
    \lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right| = \infty &\implies \sum_{n=1}^{\infty}\ \text{diverges}
    \\[8pt]
    \lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right| = 1 &\implies\ \text{Ratio Test is inconclusive}
    \end{align}
  }

◊(nobar)
◊orange{●} ◊black-title{Root Test}
  ◊$${
    \begin{align}
    \lim_{n \to \infty} \sqrt[n]{|a_n|} = L < 1 &\implies \sum_{n=1}^{\infty} a_n\ \text{absolutely convergent}
    \\[8pt]
    \lim_{n \to \infty} \sqrt[n]{|a_n|} = L > 1 &\implies \sum_{n=1}^{\infty} a_n\ \text{diverges}
    \\[8pt]
    \lim_{n \to \infty} \sqrt[n]{|a_n|} = \infty &\implies \sum_{n=1}^{\infty} a_n\ \text{diverges}
    \\[8pt]
    \lim_{n \to \infty} \sqrt[n]{|a_n|} = 1 &\implies \text{Root Test is inconclusive}
    \end{align}
  }

◊black-title{Strategy}
  ◊bullet-list{
    The comparison test applies only to series with positive terms, but  if ◊${\sum a_n} has negative terms, we can apply the comparison test to ◊${\sum |a_n|} and test for absolute convergence.


    If you suspect ◊${\lim_{n \to \infty} a_n \neq 0} try the ◊mono{test for divergence}.


    If series is a rational function or an algebraic function of n, then try ◊mono{comparison test} with a p-series.

    If series involves factorials, products or constants raised to the nth power try ◊mono{ratio test}.


    If series is of the form ◊${(b_n)^n} try ◊mono{root test}.


    if ◊${\int_{1}^{\infty} f(x) dx} is easily evaluated try ◊mono{integral test}.
  }

◊(nobar)◊(nobar)
◊black-title{Power Series}
  ◊$${
    \sum_{n=0}^{\infty} 2^n = c_0 + c_1(x-a) + c_2(x-a)^2 + \dots
  }
  is a power series centered at ◊${a}

For a power series of the form ◊${\sum_{n=0}^{\infty} c_n(x-a)^n} there are only three possibilities.

◊bullet-list{
  The series converges only when ◊${x = a}.


  The series converges for all x.


  There is a positive number ◊${R} such that the series converges if ◊${|x-a| < R} and diverges if ◊${|x-a| > R}.
}

◊red-light{interval of convergence}
  ◊indented{interval that consists of all the values of ◊${x} for which the series converges.}

◊black-title{Differentiation and Integration of Power Series}

◊$${
  \begin{align}
  \frac{d}{dx} \left[ \sum_{n=0}^{\infty} c_n(x-a)^n \right] &= \sum_{n=0}^{\infty} \frac{d}{dx} \left[ c_n(x-a)^n \right]
  \\[6pt]
  \int \left[ \sum_{n=0}^{\infty} c_n(x-a)^n \right] &= \sum_{n=0}^{\infty} \int \left[ c_n(x-a)^n \right]
  \end{align}
}

◊(nobar)
◊black-title{Taylor Series}

  ◊$${
    \begin{align}
    f(x) &= \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!}(x-a)^n
    \\[7pt]
    &= f(a) + \frac{f^{\prime}(a)}{1!}(x-a) + \frac{f^{\prime\prime}(a)}{2!}(x-a)^2 + \frac{f^{\prime\prime\prime}(a)}{3!}(x-a)^3
    \end{align}
  }

◊(nobar)
◊black-title{Maclaurin Series}

  ◊$${
    \begin{align}
    f(x) &= \sum_{n=0}^{\infty} \frac{f^{(n)}(0)}{n!}x^n
    \\[7pt]
    &= f(0) + \frac{f^{\prime}(0)}{1!}x + \frac{f^{\prime\prime}(0)}{2!}x^2 + \frac{f^{\prime\prime\prime}(0)}{3!}x^3
    \end{align}
  }


◊(nobar)
◊black-title{Taylor's Inequality}
  ◊right-note{
    ◊mono{
      ◊yellow_wash{useful}
    }
    ◊$${\lim_{n \to \infty} \frac{x^n}{n!} = 0}
  }
  ◊$${
    \left| f^{(n+1)}(x) \right| \leq M \quad \implies \quad |R_n(x)| \leq \frac{M}{(n+1)!}|x-a|^{n+1}
  }
for ◊${|x-a| \leq d}


◊(nobar)
◊black-title{Known Maclaurin Series}

  ◊$${
    \begin{align}
    \frac{1}{1-x} &= \sum_{n=0}^{\infty}x^n = 1 + x + x^2 + x^3 + \dots &R &=1
    \\[7pt]
    e^x &= \sum_{n=0}^{\infty} \frac{x^n}{n!} = 1 + \frac{x}{1!} + \frac{x^2}{2!} + \frac{x^3}{3!} + \dots &R &=\infty
    \\[7pt]
    sin x &= \sum_{n=0}^{\infty} (-1)^n \frac{x^{2n+1}}{(2n+1)!} = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots &R &=\infty
    \\[7pt]
    cos x &= \sum_{n=0}^{\infty} (-1)^n \frac{x^{2n}}{(2n)!} = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots &R &=\infty
    \\[7pt]
    tan^{-1} x &= \sum_{n=0}^{\infty} (-1)^n \frac{x^{2n+1}}{(2n+1)} = x - \frac{x^3}{3} + \frac{x^5}{5} - \frac{x^7}{7} + \dots &R &=1
    \\[7pt]
    ln(1+x) &= \sum_{n=1}^{\infty} (-1)^{n-1} \frac{x^n}{n} = x - \frac{x^2}{2} + \frac{x^3}{3} - \frac{x^4}{4} + \dots &R &=1
    \\[7pt]
    (1+x)^k &= \sum_{n=0}^{\infty}\binom{k}{n} x^n = 1 + kx + \frac{k(k-1)}{2!}x^2 + \frac{k(k-1)(k-2)}{3!}x^3 + \dots &R &=1
    \end{align}
  }

◊black-title{Multiplication and Division of Power Series}

  ◊indented{Power Series can be added, substracted, multiplied and divided like polynomials, We consider only the first few terms because they are the most significant.}


◊black-title{nth-degree Taylor Polynomial}
  ◊$${T_n(x) = \sum_{i=0}^{n} \frac{f^{(i)}(a)}{i!}(x-a)^i}

◊black-title{Helpful}

◊bullet-list{
  ◊${\lim_{x \to 0}\frac{sinx}{x} = 1}


  ◊${\lim_{x \to \infty}\frac{sinx}{x} = 0}


  ◊${\lim_{x \to \infty} \left[1 + (\frac{1}{n})^n \right] = e}
}
