#lang pollen

◊red-title{Section 2}
◊small-num{08.22.17}

◊(nobar)

◊;---------- START

◊(orange-line)
◊left-note{◊num{2.1}}
◊red-title{The Tangent and Velocity Problems}

◊section{Tangent}  ◊; Tangent

  ◊bullet-list{
    Line that touches a curve exactly once curve.


    Has the same direction as the curve at the point of contact.
  }


◊section{Secant}  ◊; Secant

  ◊bullet-list{
    Line that intercets a curve more than once.
  }

◊(nobar)

  The slope of the ◊em{tangent line} is the limit of the slopes of the ◊em{secant lines}.

◊section{Instantaneous Velocity}  ◊; Instantaneous Velocity
  ◊indented{The limiting value of average velocities over shorter and shorter periods of time.}


◊(nobar)◊(nobar)◊(nobar)

  ◊(orange-line)
  ◊left-note{◊red{◊small-num{2.2}}}
  ◊red-title{The Limit of a Function}

◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Limit}}
  ◊right-note{the limit of ◊${f(x)}, as ◊${x} approaches ◊${a}, is ◊${L}}

  ◊$${\lim_{x \to a} f(x) = L}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{One-Sided Limit}}
  ◊right-note{the limit of ◊${f(x)}, as ◊${x} approaches ◊${a} ◊strong{from the left}, is ◊${L}}

  ◊$${\lim_{x \to a^-} f(x) = L}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{◊num{Theorem 1}}}

  ◊$${
    \lim_{x \to a} f(x) = L \iff \lim_{x \to a^-} f(x) = L = \lim_{x \to a^+} f(x)
  }

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Infinite Limit}}
  ◊right-note{
    the limit of ◊${f(x)}, as ◊${x} approaches ◊${a}, is ◊${\infty}
  }

  ◊$${\lim_{x \to a} f(x) = \infty}
  ◊indented{◊orange{This doesn't mean the limit exists, rather it expresses a particular way in which it doesn't exists.}}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{5}}
  ◊right-note{the limit of ◊${f(x)}, as ◊${x} approaches ◊${a}, is ◊${-\infty}}

  ◊$${\lim_{x \to a} f(x) = -\infty}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Vertical Asymptote}}
  ◊right-note{vertical line ◊${x = a} is a ◊em{vertical asymtote} of curve ◊${y = f(x)} if ◊strong{at least one} is true}

  ◊$${\lim_{x \to a} f(x) = \infty \quad \lim_{x \to a^-} f(x) = \infty \quad \lim_{x \to a^+} f(x) = \infty}
  ◊$${\lim_{x \to a} f(x) = -\infty \quad \lim_{x \to a^-} f(x) = -\infty \quad \lim_{x \to a^+} f(x) = -\infty}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊(orange-line)
  ◊left-note{◊red{◊small-num{2.3}}}
  ◊red-title{Calculating Limits Using the Limit Laws}

◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Sum Law}}
  ◊right-note{the limit of a sum is the sum of the limits}

  ◊$${\lim_{x \to a} [f(x) + g(x)] = \lim_{x \to a} f(x) + \lim_{x \to a} g(x)}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Difference Law}}
  ◊right-note{the limit of a difference is the difference of the limits}

  ◊$${\lim_{x \to a} [f(x) - g(x)] = \lim_{x \to a} f(x) - \lim_{x \to a} g(x)}


◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Constant Multiple Law}}
  ◊right-note{the limit of a constant times a function is the constant times the limit of the function}

  ◊$${\lim_{x \to a} [cf(x)] = c \lim_{x \to a} f(x)}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Product Law}}
  ◊right-note{the limit of a product is the product of the limits}

  ◊$${\lim_{x \to a} [f(x) \cdot g(x)] = \lim_{x \to a} f(x) \cdot \lim_{x \to a} g(x)}


◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Quotient Law}}
  ◊right-note{the limit of a quotient is the quotient of the limits}

  ◊$${\lim_{x \to a} \frac{f(x)}{g(x)} = \frac {\lim_{x \to a} f(x)}{\lim_{x \to a} g(x)}}
  ◊indented{◊orange{provided the limit of the denominator is not 0}}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Power Law}}
  ◊right-note{◊orange{provided ◊${n} is a positive integer}}

  ◊$${\lim_{x \to a} [f(x)]^n = [\lim_{x \to a} f(x)]^n}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{◊num{7}}}
  ◊right-note{the limit of a constant is itself}

  ◊$${\lim_{x \to a} c = c}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{◊num{8}}}
  ◊right-note{the limit of a variable is itself}

  ◊$${\lim_{x \to a} x = a}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{◊num{9}}}
  ◊right-note{◊orange{provided ◊${n} is a positive integer}}

  ◊$${\lim_{x \to a} x^n = a^n}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{◊num{10}}}
  ◊right-note{◊orange{provided ◊${n} is a positive integer}}

  ◊$${\lim_{x \to a} \sqrt[n]{x} = \sqrt[n]{a}}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Root Law}}
  ◊right-note{◊orange{provided ◊${n} is a positive integer}}

  ◊$${\lim_{x \to a} \sqrt[n]{f(x)} = \sqrt[n]{\lim_{x \to a} f(x)}}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{13}}
  ◊right-note{◊orange{provided the limit exists and ◊${x \ne a}}}
  ◊$${f(x) = g(x)\ \text{when}\ x \ne a \implies \lim_{x \to a} f(x) = \lim_{x \to a} g(x)}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Theorem 2}}
  ◊right-note{◊orange{ provided the limits of ◊${f} and ◊${g} both exists}}

  ◊$${f(x) \leq g(x)\ \text{near}\ a \implies \lim_{x \to a} f(x) \leq \lim_{x \to a} g(x)}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Squeeze Theorem}}

  ◊$${f(x) \leq g(x) \leq h(x)\ \text{near}\ a \wedge \lim_{x \to a} f(x) = \lim_{x \to a} h(x) = L }
  ◊$${\implies \quad \quad \lim_{x \to a} g(x) = L}

  ◊indented{If ◊${g(x)} is squeezed between ◊${f(x)} and ◊${h(x)} near ◊${a}, and if ◊${f} and ◊${h} have the same limit ◊${L} at ◊${a}, then ◊${g} is forced to have the same limit ◊${L} at a.}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊(orange-line)
  ◊left-note{◊red{◊small-num{2.4}}}
  ◊red-title{The Precise Definition of a Limit}

◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Precise Definition of a Limit}}
  ◊right-note{the distance between ◊${f(x)} and ◊${L} can be made arbitrarily small by requiring the distance from ◊${x} to ◊${a} be sufficiently small}

  ◊$${\lim_{x \to a} f(x) = L}
  ◊$${
    \text{if for every number}\ \epsilon > 0\ \text{there is a number}\ \delta > 0\ \text{such that}
  }
  ◊$${\text{if}\ 0 < |x-a| < \delta\ \text{then}\ |f(x)-L| < \epsilon}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Left-Hand Limit}}
  ◊right-note{}

  ◊$${\lim_{x \to a^-} f(x) = L}
  ◊$${
    \text{if for every number}\ \epsilon > 0\ \text{there is a number}\ \delta > 0\ \text{such that}
  }
  ◊$${\text{if}\ a - \delta < x < a\ \text{then}\ |f(x)-L| < \epsilon}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Right-Hand Limit}}
  ◊right-note{}

  ◊$${\lim_{x \to a^+} f(x) = L}
  ◊$${
    \text{if for every number}\ \epsilon > 0\ \text{there is a number}\ \delta > 0\ \text{such that}
  }
  ◊$${\text{if}\ a < x < a + \delta\ \text{then}\ |f(x)-L| < \epsilon}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Infinite Limit}}
  ◊right-note{}

  ◊$${\lim_{x \to a} f(x) = \infty}
  ◊$${
    \text{means that for every positive number}\ M\ \text{there is a positive number}\ \delta\ \text{such that}
  }
  ◊$${\text{if}\ 0 < |x-a| < \delta\ \text{then}\ |f(x)-L| > M}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{- Infinite Limit}}
  ◊right-note{}

  ◊$${\lim_{x \to a} f(x) = -\infty}
  ◊$${
    \text{means that for every negative number}\ N\ \text{there is a positive number}\ \delta\ \text{such that}
  }
  ◊$${\text{if}\ 0 < |x-a| < \delta\ \text{then}\ |f(x)-L| < N}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊(orange-line)
  ◊left-note{◊red{◊small-num{2.5}}}
  ◊red-title{Continuity}

◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Function continuous at a}}
  ◊right-note{}

  ◊$${\text{a function}\ f\ \text{is continuous at number}\ a\ \text{if}}
  ◊bullet-list{
    ◊${f(a)\ \text{is defined}}


    ◊${\lim_{x \to a} f(x)\ \text{exists}}


    ◊${\lim_{x \to a} f(x) = f(a)}
  }

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Right}}
  ◊right-note{}

  ◊$${\text{a function}\ f\ \text{is continuous from the right at number}\ a\ \text{if}}
  ◊$${\lim_{x \to a^+} f(x) = f(a)}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Left}}
  ◊right-note{}

  ◊$${\text{a function}\ f\ \text{is continuous from the left at number}\ a\ \text{if}}
  ◊$${\lim_{x \to a^-} f(x) = f(a)}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Function continuous on an interval}}
  ◊right-note{}

  ◊indented{a function ◊${f} is ◊strong{continuous on an interval} if it is continuous at every number in the interval}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Theorem 4}}
  ◊right-note{}

  ◊indented{If ◊${f} and ◊${g} are continuous at ◊${a} and ◊${c} is a constant, then the following functions are also continuous at ◊${a}:}

  ◊bullet-list{
    ◊${f + g}


    ◊${f - g}


    ◊${cf}


    ◊${fg}


    ◊right-note{if ◊${g(a) \ne 0}}
    ◊${\frac{f}{g}}
  }

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Theorem 5}}
  ◊right-note{
    rational function:
    ◊$${f(x) = \frac{P(x)}{Q(x)}}
  }

  ◊bullet-list{
    Any polynomial is continuous everywhere


    Any rational function is continuous on its domain
  }

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Theorem 6}}
  ◊right-note{}

  ◊$${\lim_{\theta \to 0} cos\ \theta = 1 \quad \lim_{\theta \to 0} sin\ \theta = 0}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Functions continuous on their domains}}
  ◊right-note{
    Continuous Functions possess the ◊blue{Direct Substitution Property}
    ◊$${\lim_{x \to a} f(x) = f(a)}
    }

  ◊bullet-list{
    polynomial


    rational


    root


    trigonometric


    inverse trigonometric


    exponential


    logarithmic

  }

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Theorem 8}}
  ◊right-note{limit symbol can be moved through a function symbol if the function is continuous and the limit exists}

  ◊$${\text{If}\ f\ \text{is continuous at}\ b\ \text{and}\ \lim_{x \to a} g(x) = b,\ \text{then}\ \lim_{x \to a} f(g(x)) = f(b).}
  ◊$${\lim_{x \to a} f(g(x)) = f(l\lim_{x \to a} g(x))}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Theorem 9}}
  ◊right-note{a continuous function of a continuous function is a continous function}

  If ◊${g} is continuous at ◊${a} and ◊${f} is continuous at ◊${g(a)}, then the composite function ◊${f \circ g} given by ◊${(f \circ g)(x) = f(g(x))} is continuous at ◊${a}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{The Intermediate Value Theorem}}
  ◊right-note{a continuous function takes on every intermediate value between ◊${f(a)} and ◊${f(b)}}

  Suppose that ◊${f} is continuous on the closed interval ◊${[a,b]} and let ◊${N} be any number between ◊${f(a)} and ◊${f(b)}, where ◊${f(a) \ne f(b)}. Then there exists a number ◊${c} in ◊${(a,b)} such that  given by ◊${f(c) = N}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

    ◊(orange-line)
    ◊left-note{◊red{◊small-num{2.6}}}
    ◊red-title{Limits at Infinity; Horizontal Asymptotes}

◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Limit at Infinity}}
  ◊right-note{}

  ◊$${\lim_{x \to \infty} f(x) = L}

  The values of ◊${f(x)} can be made aritrarily close to ◊${L} by requiring ◊${x} to be sufficiently large.

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Limit at  Negative Infinity}}
  ◊right-note{}

  ◊$${\lim_{x \to -\infty} f(x) = L}

  The values of ◊${f(x)} can be made aritrarily close to ◊${L} by requiring ◊${x} to be sufficiently negative.

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Horizontal asymtote}}
  ◊right-note{}

  The line ◊${y = L} is a ◊strong{horizontal asymtote} of the curve ◊${y = f(x)} if either

  ◊$${\lim_{x \to \infty} f(x) = L \quad \text{or} \quad \lim_{x \to -\infty} f(x) = L}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{4}}
  ◊right-note{◊${y = tan^{-1}x} has two horizontal asymptotes}

  ◊$${\lim_{x \to -\infty} tan^{-1}x = - \frac{\pi}{2} \quad \lim_{x \to \infty} tan^{-1}x = \frac{\pi}{2}}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Theorem 5}}
  ◊right-note{}

  If ◊${r > 0} is a rational number, then

  ◊$${\lim_{x \to \infty} \frac{1}{x^r} = 0}

  If ◊${r > 0} is a rational number such that ◊${x^r} is defined for all ◊${x}, then

  ◊$${\lim_{x \to -\infty} \frac{1}{x^r} = 0}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{case: rational function}}


  To evaluate the limit at infinity of any rational function, first divide both numerator and denominator by the highest power of ◊${x} that occurs in the denominator.

  ◊$${
    \lim_{x \to \infty} \frac{3x^2 - x - 2}{5x^2 + 4x +1} = \lim_{x \to \infty} \frac{\frac{3x^2 - x -2}{x^2}}{\frac{5x^2 + 4x +1}{x^2}} = \lim_{x \to \infty} \frac{3 - \frac{1}{x} - \frac{2}{x^2}}{5 + \frac{4}{x} + \frac{1}{x^2}}
  }

  ◊$${
    = \frac{\lim_{x \to \infty} (3 - \frac{1}{x} - \frac{2}{x^2})}{\lim_{x \to \infty} (5 + \frac{4}{x} + \frac{1}{x^2})}
  }

  ◊$${
    = \frac{\lim_{x \to \infty} 3 = \lim_{x \to \infty} \frac{1}{x} - \lim_{x \to \infty} \frac{1}{x^2}}{\lim_{x \to \infty} 5 + 4 \lim_{x \to \infty} \frac{1}{x} + \lim_{x \to \infty} \frac{1}{x^2}}
  }

  ◊$${
    = \frac{3 - 0 - 0}{5 + 0 +0}
  }

  ◊$${= \frac{3}{5}}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊mono{Conjugate}}

  When we change the sign of a binomial.

  ◊$${a + b \wedge a - b = conjugates}

  The product of conjugates is always ◊${a^2 - b^2}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{6}}
  ◊right-note{◊orange{limit laws can't be applied to infinite limits because ◊${\infty} is not a number}}

  ◊$${\lim_{x \to \infty} e^x = 0}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Limit at Infinity}}

  ◊$${\lim_{x \to \infty} f(x) = L}

  means that for every ◊${\epsilon > 0} there is a corresponding ◊${N} such that

  ◊$${\text{if}\ x > N\ \text{then}\ |f(x) - L| < \epsilon}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Limit at - Infinity}}

  ◊$${\lim_{x \to -\infty} f(x) = L}

  means that for every ◊${\epsilon > 0} there is a corresponding ◊${N} such that

  ◊$${\text{if}\ x < N\ \text{then}\ |f(x) - L| < \epsilon}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Infinite Limit at Infinity}}

  ◊$${\lim_{x \to \infty} f(x) = \infty}

  means that for every ◊${M > 0} there is a corresponding ◊${N > 0} such that

  ◊$${\text{if}\ x > N\ \text{then}\ f(x) > M}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

    ◊(orange-line)
    ◊left-note{◊red{◊small-num{3.1}}}
    ◊red-title{Derivatives of Polynomials and Exponential Functions}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Derivative of a Constant Function}}

  ◊$${\frac{d}{dx}(c) = 0}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Power Rule}}

  if ◊${n \in \mathbb{R}}

  ◊$${\frac{d}{dx}(x^n) = nx^{n-1}}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{The Constant Multiple Rule}}

  if ◊${c} is constant and ◊${f} is a differentiable function, then

  ◊$${\frac{d}{dx}(cf(x)) = c \frac{d}{dx}f(x)}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Sum Rule}}

  if ◊${f} and ◊${g} are both differentiable, then

  ◊$${\frac{d}{dx}[f(x)+g(x)] = \frac{d}{dx}f(x) + \frac{d}{dx}g(x)}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Difference Rule}}

  if ◊${f} and ◊${g} are both differentiable, then

  ◊$${\frac{d}{dx}[f(x)-g(x)] = \frac{d}{dx}f(x) - \frac{d}{dx}g(x)}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Derivative ◊${e^x}}}

  ◊$${\frac{d}{dx}(e^x)=e^x}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Product Rule}}

  if ◊${f} and ◊${g} are both differentiable, then

  ◊$${\frac{d}{dx}[f(x)g(x)] = f(x) \frac{d}{dx}[g(x)] + g(x) \frac{d}{dx}[f(x)]}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Quotient Rule}}

  if ◊${f} and ◊${g} are both differentiable, then

  ◊$${\frac{d}{dx} \left [\frac{f(x)}{g(x)} \right] = \frac{g(x) \frac{d}{dx}[f(x)] + f(x) \frac{d}{dx}[g(x)]}{[g(x)]^2}}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Table of Differentiation Formulas}}

  ◊bullet-list{
    ◊${\frac{d}{dx}(c) = 0}


    ◊${\frac{d}{dx}(x^n) = nx^{n-1}}


    ◊${\frac{d}{dx}(e^x) = e^x}


    ◊${(cf)' = cf'}


    ◊${(f + g)' = f' + g'}


    ◊${(f - g)' = f' - g'}


    ◊${(fg)' = fg' - gf'}


    ◊${(\frac{f}{g})' = \frac{gf' - fg'}{g^2}}
  }


◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

    ◊(orange-line)
    ◊left-note{◊red{◊small-num{3.3}}}
    ◊red-title{Derivatives of trigonometric Functions}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{2}}

  ◊$${\lim_{x \to 0} \frac{sin \theta}{\theta} = 1}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Derivative Trig Functions}}

  ◊bullet-list{
    ◊${\frac{d}{dx}(sin x) = cos x}


    ◊${\frac{d}{dx}(cos x) = - sin x}


    ◊${\frac{d}{dx}(tan x) = sec^2x}


    ◊${\frac{d}{dx}(csc x) = - csc x cot x}


    ◊${\frac{d}{dx}(sec x) = sec x tan x}


    ◊${\frac{d}{dx}(cot x) = - csc^2x}

  }

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊(orange-line)
  ◊left-note{◊red{◊small-num{3.4}}}
  ◊red-title{Chain Rule}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Chain Rule}}

  If ◊${g} is differentiable at ◊${x} and ◊${f} is differentiable at ◊${g(x)} then the composite function ◊${F = f \circ g} defined by ◊${F(x) = f(g(x))} is differentiable at x and ◊${F'} is given by the product

  ◊$${F'(x) = f'(g(x)) \cdot g'(x)}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Chain Rule + Power Rule}}

  ◊$${\frac{d}{dx}[g(x)]^n = n[g(x)]^{n-1} \cdot g'(x)}


◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{5}}

  ◊${\frac{d}{dx}(b^x) = b^x ln b}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊(orange-line)
  ◊left-note{◊red{◊small-num{3.5}}}
  ◊red-title{Implicit Differentiation}

◊(nobar) ◊(nobar) ◊(nobar) ◊(nobar)

  ◊left-note{◊blue{Chain Rule}}

  
