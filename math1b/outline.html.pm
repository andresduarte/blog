#lang pollen

◊;---------- START

◊(nobar)◊(nobar)
◊red-title{chain rule}

    ◊$${\frac{d}{dx}[f(g(x))] = f'(g(x)) \cdot g'(x)}

◊(nobar)◊(nobar)
◊red-title{quotient rule}

    ◊$${\left(\frac{f}{g}\right)' = \frac{f'g - fg'}{g^2}}

◊(nobar)◊(nobar)
◊red-title{indentities}

  ◊mono{pythagorean}
    ◊indented{
      ◊${
        sin^2x + cos^2x = 1 \\[4pt]
        1 + tan^2x = sec^2x \\[4pt]
        1 + cot^2x = sec^2x
      }
    }

  ◊mono{double-angle}
  ◊indented{
    ◊${
      sin(2x) = 2sinx\ cosx \\[4pt]
      cos(2x) = cos^2x - sin^2x \\[4pt]
      \qquad\quad\   = 2cos^2x -1 \\[4pt]
      \qquad\quad\   = 1 -2sin^2x
    }
  }

◊(nobar)◊(nobar)
◊red-title{derivatives of inverse trig functions}

  ◊(nobar)
  ◊mono{tan◊${^{-1}} x} ◊${\quad \frac{1}{x^2 + 1}}

  ◊(nobar)
  ◊mono{sin◊${^{-1}} x} ◊${\quad \frac{1}{\sqrt{1 - x^2}}}

  ◊(nobar)
  ◊mono{cos◊${^{-1}} x} ◊${\quad -\frac{1}{\sqrt{1 - x^2}}}

  ◊(nobar)
  ◊mono{cot◊${^{-1}} x} ◊${\quad -\frac{1}{x^2 + 1}}

  ◊(nobar)
  ◊mono{csc◊${^{-1}} x} ◊${\quad -\frac{1}{x\sqrt{x^2 - 1}}}

  ◊(nobar)
  ◊mono{sec◊${^{-1}} x} ◊${\quad \frac{1}{x\sqrt{x^2 - 1}}}


◊(nobar)◊(nobar)
◊red-title{u-sub}

  ◊right-note{
    ◊$${
      \begin{align*}
      u &= g(x) \\
      du &= g'(x) dx
      \end{align*}
    }
  }
  ◊$${
    \int f(g(x))g'(x) dx = \int f(u) du
  }

    ◊indented{◊mono{◊yellow_wash{u}} should be some function in the integrand whose differential also occurs, or the inner function in a composite function.}


◊(nobar)◊(nobar)
◊red-title{by parts}

  ◊right-note{◊mono{indefinite}}
  ◊$${
    \int u\ dv = uv - \int v\ du
  }

  ◊right-note{◊mono{definite}}
  ◊$${
    \int_{a}^{b} u\ dv = uv\bigg|_a^b - \int_{a}^{b} v\ du
  }


  ◊mono{◊yellow_wash{u}} ◊mono{differentiable} ◊mono{◊yellow_wash{dv}} ◊mono{integrable}
  ◊mono{◊yellow_wash{u}} ◊mono{polynomial} ◊mono{◊yellow_wash{dv}} ◊mono{transcendental}

  ◊indented{
    ◊mono{◊yellow_wash{u}}
    ◊red-light{
      logarithmic
      inverse trig
      algebraic
      trig
      exponential
    }
    ◊mono{◊yellow_wash{dv}}
  }


◊(nobar)◊(nobar)
◊red-title{trig ids}

  ◊(nobar)
  ◊(orange-line)

  ◊$${
    \int sin^m x\ cos^n x\ dx
  }

  ◊mono{cos = odd}
    ◊indented{
      ◊right-note{◊red-light{du = cos x}}
      ◊indented{◊em{peel-off} one ◊mono{cos x} and use ◊${cos^2x = 1 - sin^2x} to express the remaining factors in terms of ◊mono{sin x}.
      Then substitute ◊mono{u = sin x}.}
    }

  ◊mono{sin = odd}
    ◊indented{
      ◊right-note{◊red-light{du = -sin x}}
      ◊indented{◊em{peel-off} one ◊mono{sin x} and use ◊${sin^2x = 1 - cos^2x} to express the remaining factors in terms of ◊mono{cos x}.
      Then substitute ◊mono{u = cosx}.}
    }

  ◊mono{sin ◊green{◊em{and}} cos = even}

  ◊mono{◊yellow_wash{half-angle indentities}}
    ◊indented{
      ◊${sin^2x = \frac{1}{2}(1 - cos2x) \\[4pt]
      cos^2x = \frac{1}{2}(1 + cos2x)}
    }
  ◊mono{and}
    ◊indented{
      ◊${sin\ x\ cos\ x = \frac{1}{2}sin\ 2x}
    }

    ◊(nobar)
    ◊(orange-line)

    ◊$${
      \int tan^m x\ sec^n x\ dx
    }

    ◊mono{sec = even}
    ◊indented{
      ◊right-note{◊red-light{du = sec◊${^2} x }}
      ◊indented{◊em{peel-off} ◊mono{◊${sec^2x}} and use ◊${sec^2x = 1 + tan^2x} to express the remaining factors in terms of ◊mono{tan x}.
      Then substitute ◊mono{u = tanx} ◊red-light{du = sec◊${^2} x}}
    }

    ◊mono{tan = odd}
    ◊indented{
      ◊right-note{◊red-light{du = sec x tan x}}
      ◊indented{◊em{peel-off} ◊mono{sec x tan x} and use ◊${tan^2x = sec^2x -1} to express the remaining factors in terms of ◊mono{tan x}.
      Then substitute ◊mono{u = sec x}}
    }

    ◊mono{else}
    ◊indented{
      ◊${\int tan\ x\  dx = ln |sec\ x| + c}
      ◊${\int sec\ x\ dx = ln |sec\ x + tan\ x| + c}
    }


    ◊(nobar)
    ◊(orange-line)

    ◊$${
      \int sin\ mx\ cos\ nx\ dx \quad \int sin\ mx\ sin\ nx\ dx \quad \int cos\ mx\ cos\ nx\ dx
    }
    ◊mono{sin A cos B}
    ◊indented{
      ◊${\frac{1}{2}[sin(A-B)+sin(A+B)]}
    }

    ◊mono{sin A sin B}
    ◊indented{
      ◊${\frac{1}{2}[cos(A-B)-cos(A+B)]}
    }

    ◊mono{cos A cos B}
    ◊indented{
      ◊${\frac{1}{2}[cos(A-B)+cos(A+B)]}
    }
    ◊mono{◊yellow_wash{product-to-sum indentities}}


◊(nobar)◊(nobar)
◊red-title{trig-sub}

  ◊(orange-line)
  ◊${\sqrt{a^2-x^2}}
    ◊indented{
      ◊mono{x = a sin θ}
      ◊mono{dx = a cos θ}
      ◊mono{◊yellow_wash{id}} ◊mono{1 - sin◊${^2}θ = cos◊${^2}θ}
    }

  ◊(orange-line)
  ◊${\sqrt{a^2+x^2}}
    ◊indented{
      ◊mono{x = a tan θ}
      ◊mono{dx = a sec◊${^2}θ}
      ◊mono{◊yellow_wash{id}} ◊mono{1 + tan◊${^2}θ = sec◊${^2}θ}
    }

  ◊(orange-line)
  ◊${\sqrt{x^2-a^2}}
    ◊indented{
      ◊mono{x = a sec θ}
      ◊mono{dx = a sec θ tan θ}
      ◊mono{◊yellow_wash{id}} ◊mono{sec◊${^2}θ - 1 = tan◊${^2}θ}
    }

◊(nobar)◊(nobar)
◊red-title{partial fractions}

  ◊red-light{if degree P ◊${\geq} degree Q then ◊yellow_wash{long divide} P by Q before proceding.}
  For a rational function ◊${f} of the form ◊${\frac{R(x)}{Q(x)}} its possible to express ◊${f} as a sum of simpler fractions. if
  ◊red-light{Q(x) form:}

  ◊(orange-line)
  ◊right-note{◊mono{distinct linear factor}}
  ◊mono{ax+b}
    ◊indented{
      ◊${
        \frac{A}{ax+b}
      }
    }

  ◊(orange-line)
  ◊right-note{◊mono{repeated linear factor}}
  ◊mono{(ax+b)◊${^r}}
    ◊indented{
      ◊${\frac{A_1}{ax+b} + \frac{A_2}{(ax+b)^2} + \dots + \frac{A_r}{(ax+b)^r}}
    }

  ◊(orange-line)
  ◊right-note{◊mono{distinct irreducible quadratic factor}}
  ◊mono{ax◊${^2}+bx+c}
    ◊indented{
      ◊${
        \frac{Ax + B}{ax^2+bx + c}
      }
    }

    ◊mono{◊yellow_wash{irreducible}} ◊mono{b◊${^2}-4ac < 0}

  ◊(orange-line)
  ◊right-note{◊mono{repeated irreducible quadratic factor}}
  ◊mono{(ax◊${^2}+bx+c)◊${^r}}
    ◊indented{
      ◊${
        \frac{A_1x + B_1}{ax^2+bx + c} + \frac{A_2x + B_2}{(ax^2+bx + c)^2} + \dots + \frac{A_rx + B_r}{(ax^2+bx + c)^r}
      }
    }

◊(nobar)◊(nobar)
◊red-title{rationalizing substitution}

  When integrand contains an expressions of the form ◊${\sqrt[n]{g(x)}}

  ◊indented{
    ◊mono{u =◊${\sqrt[n]{g(x)}}}
  }

◊(nobar)◊(nobar)
◊red-title{basic integrals}

    ◊indented{
      ◊${
        \int x^n dx = \frac{x^{n+1}}{n + 1} (n \ne -1) \\[4pt]
        \int \frac{1}{x}\ dx = ln|x| \\[4pt]
        \int e^x\ dx = e^x \\[4pt]
        \int b^x\ dx = \frac{b^x}{ln b} \\[4pt]
        \int \sin{x}\ dx = -\cos{x} \\[4pt]
        \int \cos{x}\ dx = \sin{x} \\[4pt]
        \int \sec^2{x}\ dx = \tan{x} \\[4pt]
        \int \csc^2{x}\ dx = -\cot{x} \\[4pt]
        \int \sec{x} \tan{x}\ dx = \sec{x} \\[4pt]
        \int \csc{x} \cot{x}\ dx = -\csc{x} \\[4pt]
        \int \sec{x}\ dx = \ln|\sec{x} + \tan{x}| \\[4pt]
        \int \csc{x}\ dx = \ln |\csc{x} - \cot{x}| \\[4pt]
        \int \tan{x}\ dx = \ln|\sec{x}| \\[4pt]
        \int \cot{x}\ dx = \ln|\sin{x}| \\[4pt]
        \int \sinh{x}\ dx = \cosh{x} \\[4pt]
        \int \cosh{x}\ dx = \sinh{x} \\[4pt]
        \int \frac{dx}{x^2 + a^2} = \frac{1}{a}\tan^{-1}{( \frac{x}{a} )} \\[4pt]
        \int \frac{dx}{\sqrt{a^2 - x^2}} = \sin^{-1}(\frac{x}{a}), \quad a > 0 \\[4pt]
        \int \frac{dx}{x^2 + a^2} = \frac{1}{2a} \ln|\frac{x - a}{x + a}| \\[4pt]
        \int \frac{dx}{\sqrt{x^2 \pm a^2}} = \ln |x + \sqrt{x^2 \pm a^2}|
      }
    }

◊(nobar)◊(nobar)
◊right-note{
  ◊$${∆x = \frac{b -a}{n}}
}
◊red-title{approximate integration}

  ◊(orange-line)
  ◊mono{midpoint rule}
  ◊indented{
    ◊${
      M_n = ∆x [f(\bar{x}_1) + f(\bar{x}_2) + \dots + f(\bar{x}_n)]
    }
  }
  ◊${
    \bar{x}_i = \frac{1}{2}(x_{i-1} +x_i)
  }
  ◊red-light{error}
  ◊indented{
    ◊${|E_t| \leq \frac{K(b-a)^3}{24n^2}\quad \text{if}\quad |f^{(2)}(x)| \leq K\quad \text{for}\quad a \leq x \leq b}
  }

  ◊(orange-line)
  ◊mono{trapezoid rule}
  ◊indented{
    ◊${
      T_n = \frac{∆x}{2}[f(x_0) + 2f(x_1) + 2f(x_2) + \dots + 2f(x_{n-1}) + f(x_n)]
    }
  }
  ◊${
    x_i = a + i∆x
  }
  ◊red-light{error}
  ◊indented{
    ◊${|E_t| \leq \frac{K(b-a)^3}{12n^2}\quad \text{if}\quad |f^{(2)}(x)| \leq K\quad \text{for}\quad a \leq x \leq b}
  }

  ◊(orange-line)
  ◊mono{simpson's rule}
  ◊indented{
    ◊${
      S_n = \frac{∆x}{3}[f(x_0) + 4f(x_1) + 2f(x_2) + 4f(x_3) + \dots + 2f(x_{n-2}) + 4f(x_{n-1}) + f(x_n)]
    }
  }
  ◊mono{◊yellow_wash{n = even}}
  ◊red-light{error}
  ◊indented{
    ◊${|E_s| \leq \frac{K(b-a)^5}{180n^4}\quad \text{if}\quad |f^{(4)}(x)| \leq K\quad \text{for}\quad a \leq x \leq b}
  }

◊(nobar)◊(nobar)
◊red-title{improper integrals}

  definite integral of a function ◊${f} defined on a infinite interval.
  ◊mono{limit exists ◊yellow_wash{convergent}}
  ◊mono{limit does not exist ◊yellow_wash{divergent}}

  ◊mono{type 1a}
  ◊indented{
    ◊${\int_a^{\infty} f(x)\ dx = \lim_{t\to\infty} \int_a^t f(x)\ dx}
  }

  ◊mono{type 1b}
  ◊indented{
    ◊${\int_{-\infty}^{b} f(x)\ dx = \lim_{t \to -\infty} \int_t^b f(x)\ dx}
  }

  ◊mono{type 1c}
  ◊indented{
    ◊${\int_{-\infty}^{\infty} f(x)\ dx = \int_{-\infty}^a f(x)\ dx + \int_a^{\infty} f(x)\ dx}
  }

  ◊mono{continuous at [a,b) discontinuous at b}
  ◊indented{
    ◊${\int_{a}^{b} f(x)\ dx = \lim_{t \to b^-} \int_a^t f(x)\ dx}
  }

  ◊mono{continuous at (a,b] discontinuous at a}
  ◊indented{
    ◊${\int_{a}^{b} f(x)\ dx = \lim_{t \to a^+} \int_t^b f(x)\ dx}
  }

  ◊mono{discontinuity at c, where a < c < b}
  ◊indented{
    ◊${\int_{a}^{b} f(x)\ dx =  \int_a^c f(x)\ dx + \int_c^b f(x)\ dx}
  }
  ◊mono{◊yellow_wash{provided limit exists and is a finite number}}

◊(nobar)◊(nobar)
◊red-title{p-test}

  ◊(orange-line)
  ◊red-light{from 1 to ◊${\infty}}
  ◊mono{p > 1}
  ◊indented{
    ◊${\int_1^{\infty} \frac{1}{x^p}\quad} ◊mono{converges}
  }

  ◊mono{p ◊${\leq} 1}
  ◊indented{
    ◊${\int_1^{\infty} \frac{1}{x^p}\quad} ◊mono{diverges}
  }

  ◊(orange-line)
  ◊red-light{from 0 to 1}
  ◊mono{p < 1}
  ◊indented{
    ◊${\int_0^{1} \frac{1}{x^p}\quad} ◊mono{converges}
  }

  ◊mono{p ◊${\geq} 1}
  ◊indented{
    ◊${\int_0^{1} \frac{1}{x^p}\quad} ◊mono{diverges}
  }

◊(nobar)◊(nobar)
◊red-title{comparison test}

  ◊mono{f and g are continuous and f(x) ◊${\geq} g(x) ◊${\geq} 0 for x ◊${\geq} a}
  ◊indented{
    ◊${\int_a^{\infty} f(x)\ dx\quad} ◊mono{converges} ◊${\implies \int_a^{\infty} g(x)\ dx\quad} ◊mono{converges}
    ◊red-light{if bigger one converges smaller one converges}
  }
  ◊mono{◊yellow_wash{and}}
  ◊indented{
    ◊${\int_a^{\infty} g(x)\ dx\quad} ◊mono{diverges} ◊${\implies \int_a^{\infty} f(x)\ dx\quad} ◊mono{diverges}
    ◊red-light{if smaller one diverges bigger one diverges}
  }
  ◊mono{◊yellow_wash{also applies for improper integrals on finite intervals}}

◊(nobar)◊(nobar)
◊red-title{arc length}

  ◊mono{length of curve y = f(x), a ◊${\leq} x ◊${\leq} b}
  ◊indented{
    ◊${L = \int_a^{b} \sqrt{1 + [f'(x)]^2}\ dx}
    ◊red-light{if f'(x) is continuous on [a,b]}
  }

  ◊mono{length of curve x = g(y), c ◊${\leq} y ◊${\leq} b}
  ◊indented{
    ◊${L = \int_a^{b} \sqrt{1 + [g'(y)]^2}\ dx}
    ◊mono{◊yellow_wash{must}} ◊red-light{g'(y) continuous on [a,b]}
  }

◊(nobar)◊(nobar)
◊red-title{surface area}

  ◊mono{surface obtain by rotating y = f(x), a ◊${\leq} x ◊${\leq} b, about the x-axis}
  ◊indented{
    ◊${S = \int_a^{b} 2\pi\ f(x) \sqrt{1 +[f'(x)]^2}\ dx}
    ◊mono{◊yellow_wash{must}} ◊red-light{f'(x) continuous and f(x) > 0}
  }

  ◊mono{surface obtain by rotating y = f(x), a ◊${\leq} x ◊${\leq} b, about the y-axis}
  ◊indented{
    ◊${S = \int_a^{b} 2\pi\ x \sqrt{1 +[f'(x)]^2}\ dx}
    ◊mono{◊yellow_wash{must}} ◊red-light{f'(x) continuous and f(x) > 0}
  }

◊(nobar)◊(nobar)
◊red-title{applications of integration}

  ◊mono{hydrostatic pressure and force}
  ◊indented{
    ◊${
      \text{Force}\ = \rho g d \\[5pt]
      \text{Pressure}\ = \frac{F}{A} = \rho g d
    }
    ◊red-light{
      A = area
      ◊${\rho} = density
      d = depth
      g = gravity
    }
  }

◊(nobar)◊(nobar)
◊red-title{center of mass}

  ◊mono{◊yellow_wash{centroid} center of mass of a plate}

  ◊mono{moment of plate about the x-axis}
  ◊indented{
    ◊${M_x = \rho \int_a^b \frac{1}{2}[f(x)]^2\ dx}
  }

  ◊mono{moment of plate about the y-axis}
  ◊indented{
    ◊${M_y = \rho \int_a^b xf(x)\ dx}
  }

  ◊mono{center of mass x-coordinate}
  ◊indented{
    ◊${\bar{x} = \frac{1}{A} \int_a^b xf(x)\ dx}
  }

  ◊mono{center of mass y-coordinate}
  ◊indented{
    ◊${\bar{y} = \frac{1}{A} \int_a^b \frac{1}{2}[f(x)]^2\ dx}
  }
  ◊red-light{center of mass of plate is located at ◊yellow_wash{(◊${\bar{x}}, ◊${\bar{y}})}}

  ◊mono{center of mass x-coordinate of plate that lies between two curves}
  ◊indented{
    ◊${\bar{x} = \frac{1}{A} \int_a^b x[f(x) - g(x)]\ dx}
  }

  ◊mono{center of mass y-coordinate of plate that lies between two curves}
  ◊indented{
    ◊${\bar{y} = \frac{1}{A} \int_a^b \frac{1}{2}[f(x)]^2 - [g(x)]^2\ dx}
  }

◊(nobar)◊(nobar)
◊red-title{pappus}

  ◊indented{
    Let ◊${R} be a plane region that lies entirely on one side of a line ◊${l}. If ◊${R} is rotated about ◊${l}, then the volume of the resulting solid is the product of the area ◊${A} of ◊${R} and the distance ◊${d} traveled by the centroid of ◊${R}
  }

◊(nobar)◊(nobar)
◊red-title{exponentially decreasing function}
