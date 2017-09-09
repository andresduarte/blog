#lang pollen

◊red-title{Chapter 7}
◊small-num{08.25.17}

◊(nobar)

◊;---------- START

◊(orange-line)
◊right-note{◊red{◊num{7.5}}}
◊red-title{Section}
◊(nobar) ◊(nobar)

  ◊strong{Basic Integration Formulas}
  ◊bullet-list{
    ◊${\int x^n dx = \frac{x^{n+1}}{n + 1} (n \ne -1)}


    ◊${\int \frac{1}{x}\ dx = ln|x|}


    ◊${\int e^x\ dx = e^x}


    ◊${\int b^x\ dx = \frac{b^x}{ln b}}


    ◊${\int \sin{x}\ dx = -\cos{x}}


    ◊${\int \cos{x}\ dx = \sin{x}}


    ◊${\int \sec^2{x}\ dx = \tan{x}}


    ◊${\int \csc^2{x}\ dx = -\cot{x}}


    ◊${\int \sec{x} \tan{x}\ dx = \sec{x}}


    ◊${\int \csc{x} \cot{x}\ dx = -\csc{x}}


    ◊${\int \sec{x}\ dx = \ln|\sec{x} + \tan{x}|}


    ◊${\int \csc{x}\ dx = \ln |\csc{x} - \cot{x}|}


    ◊${\int \tan{x}\ dx = \ln|\sec{x}|}


    ◊${\int \cot{x}\ dx = \ln|\sin{x}|}


    ◊${\int \sinh{x}\ dx = \cosh{x}}


    ◊${\int \cosh{x}\ dx = \sinh{x}}


    ◊${\int \frac{dx}{x^2 + a^2} = \frac{1}{a}\tan^{-1}{( \frac{x}{a} )}}


    ◊${\int \frac{dx}{\sqrt{a^2 - x^2}} = \sin^{-1}(\frac{x}{a}), \quad a > 0}


    ◊right-note{◊blue{**}}
    ◊${\int \frac{dx}{x^2 + a^2} = \frac{1}{2a} \ln|\frac{x - a}{x + a}|}


    ◊right-note{◊blue{**}}
    ◊${\int \frac{dx}{\sqrt{x^2 \pm a^2}} = \ln |x + \sqrt{x^2 \pm a^2}|}
  }

  ◊(nobar)◊(nobar)◊(nobar)

  ◊strong{Strategy}

  ◊numbered-list{
    ◊strong{Simplify}


    ◊strong{Look for Obvious Substitution} Try to find some function ◊${u = g(x)} in the integrand whose differential ◊${du = g'(x) dx} also occurs, apart from a constant factor.


    ◊right-note{
      ◊red-light{powers of}
      ◊mono{
        sin θ ◊red{*} cos θ
        tan θ ◊red{*} sec θ
        cot θ ◊red{*} csc θ
      }
    }
    ◊strong{Classify the Integrand According to Its Form}
      ◊bullet-list{
        ◊left-note{◊red-light{Trig Function}}
        If ◊${f(x)} is a product of powers of ◊${\sin{x}} and ◊${\cos{x}}, of
        ◊${\tan{x}} and ◊${\sec{x}} or ◊${\cot{x}} and ◊${\csc{x}}, then use ◊strong{trig substitution}
        ◊(nobar)


        ◊left-note{◊red-light{Rational Function}}
        If ◊${f(x)} is a rational function,  then use ◊strong{partial fractions}.
        ◊(nobar)


        ◊left-note{◊red-light{Polynomial ◊blue{*} Transcendental}}
        ◊right-note{
          ◊mono{
            trig
            exponential
            log
          }
        }
        If ◊${f(x)} is a porduct of a power of ◊${x} (or a Polynomial) and a transcendental function◊blue{*}, then use ◊strong{integration by parts}
        ◊(nobar)


        If ◊${\sqrt{\pm x^2 \pm a^2}}, then use ◊strong{trig substitution}
        ◊(nobar)


        If ◊${\sqrt[n]{ax + b}}, then use ◊strong{rationalizing substitution}
        ◊$${u = \sqrt[n]{ax +b}}
        ◊(nobar)
      }


    ◊strong{Manipulate}
      ◊bullet-list{
        Use trig indentities


        Rationalize denominator
      }




  }
