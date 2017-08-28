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
  ◊right-note{}

  ◊$${\lim_{x \to -\infty} tan^{-1}x = - \frac{\pi}{2} \quad \lim_{x \to \infty} tan^{-1}x = \frac{\pi}{2}}
