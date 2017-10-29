#lang pollen

◊;---------- START

◊(orange-line)
◊left-note{◊small-num{◊red{◊num{2}}}}
◊right-note{◊num{◊blue{9.03.17}}}
◊red-title{Lecture}

  ◊left-note{
    ◊mono{<Control>-L}
  }
  Clears terminal screen.

  ◊left-note{
    ◊mono{
      import
      =
      def
    }
  }
  Function names for common infix operators live in ◊mono{operator module}.

  ◊strong{binding names to values}
  ◊bullet-list{
    Import statement


    Assignment statement


    Def statement
  }

  Functions differ from names in that its return expression gets re-evaluated every time it's called.

  ◊strong{Environment Diagrams}

  Memory that keeps track of the bindings between names and values.

  Environment diagrams visualize the interpreter's process.

  ◊strong{Frame}
    Each name is bound to a value
    within a frame, a name cannot be repeated

  ◊strong{Execution Procedure for assignment statements}
  ◊bullet-list{
    Evaluate all expressions to the right of ◊mono{=} from left to right.


    Bind all names to the left of ◊mono{=} to the resulting values in the current frame.
  }

  ◊strong{Defining Functions}
  Assignment is a simple means of abstraction: binds names to values.

  Function definition is a more powerful means of abstraction: binds names to ◊em{expressions}

  ◊highlight['python]{
    >>> def <name>(<formal parameters>):
      return <return expression>
  }

  Function ◊strong{signature} indicates how many arguments a function takes.

  Function ◊strong{body} defines the computational process expressed by a function.

  ◊strong{Execution Procedure for def statements}
  ◊bullet-list{
    Create a function with signature ◊mono{<name>(<formal parameters>)}


    Set the body of that function to be everything indented after the first line.


    Bind ◊mono{<name>} to that function in the current frame.
  }

  Function won't get executed until its called.

  ◊strong{Procedure for calling/applying user-defined functions}
  ◊bullet-list{
    Add a local frame, forming a new enviroment


    Bind the function's formal parameters to its arguments in that frame.


    Execute the body of the function in that enviroment.
  }


  With user defined functions you actually see the formal parameters ◊mono{func square(x)}, with built-in functions you get ◊mono{func mul(...)}

  Function's signature has all the information needed to create a local frame.

  All expressions are evaluated in the context of an enviroment.

  So far, the current enviroment is either:

  ◊bullet-list{
    The global frame alone


    A local frame, followed by the global frame.
  }

  ◊right-note{
    ◊red-light{frame}
    binding between names and value
  }
  An enviroment is a sequence of frames.

  A name evaluates to the value bound to that name in the earliest frame of the current enviroment in which the name is found.

◊(orange-line)
◊left-note{◊small-num{◊red{◊num{3}}}}
◊red-title{Lecture}

  Python has rules for automatically displaying the value of any expression you type in.

  ◊highlight['python]{
    >>> print(1,2,3)
    1 2 3
  }
  ◊right-note{nested print expression}
  ◊highlight['python]{
    >>> print(print(1), print(2))
    1
    2
    None None
  }

  The special value ◊mono{None} represents nothin in Python.

  A function that does not explicitly return a value will return ◊mono{None}

  ◊left-note{
    ◊red{**}
  }
  ◊mono{None} is ◊em{not displayed} by the interpreter as a value of an expression.

  ◊right-note{No Return ◊${\implies} ◊mono{None} is returned, which isn't displayed}
  ◊highlight['python]{
    >>> def does_not_square(x):
      x * x

    does_not_square(4)
    sixteen = does_not_square(4)
    sixteen + 4
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
    TypeError: unsupported operand type(s) for +: 'NoneType' and 'int'
  }

  ◊left-note{-}
  ◊strong{Pure Functions}
  just return values

  ◊left-note{-}
  ◊strong{Non-Pure Functions}
  ◊right-note{
    Side-effects aren't values, they're behavior they're anything that happens as a consequnece of calling a function
  }
  have side effects

  ◊strong{Multiple Enviroments}

  Enviroment
  ◊bullet-list{
    The global frame alone


    A local frame, followed by the global frame
  }

  If you start with a particular frame you can always find the whole enviroment by following the parent of the frame.

  The global frames is always the last frame.

  Enviroments are what endow names with meaning.

  A name evaluates to the value bound to that name in the erliest frame of the current enviroment in which that name is found.

  Names have different meanings in different enviroments. A call expression and the body of the function eing called are evaluated in different enviroments

  ◊left-note{
    /
  }
  ◊red-light{true divison}

  ◊left-note{
    //
  }
  ◊red-light{integer divison}

  ◊left-note{
    %
  }
  ◊red-light{modulus operator}
    returns ◊em{remainder}

  By using interger division in combination with teh modulus operator we can insure that we always get exact results. Something that we can't do by using true division alone.

  ◊strong{Python Interactive Prompt}

  ◊right-note{open python 3 in interactive mode}
  ◊highlight['python]{
    $ python3 -i <file_name>
  }

  When you write functions in addition to giving them a name and a return statement you usually give them documentation which describes what they do.

  Docstring convention is to use capital letters to refer to formal parameters.

  Additionally Docstrings can contain an example interactive session that may be simulated by typing

  ◊left-note{◊mono{doctest}}
  ◊highlight['python]{
    $ python3 -m doctest <filne_name>
  }
  No output means all tests passed. To see more output use:
  ◊right-note{verbose}
  ◊highlight['python]{
    $ python3 -m doctest -v  <filne_name>
  }

  When defining a function you can use default values.
  ◊highlight['python]{
    def divide_exact(n, d=10):
  }
  This means that when there's no argument passed to ◊mono{d}, ◊mono{d} in bound to ◊mono{10}

  Statement is executed by the interpreted to perfom an action.

  Compound statements have suites.

  The first header determines a statement's type.

  The header of a clause "controls" the suite that follows

  ◊highlight['python]{
    <header>:
      <statement> # suite
      >statement> # suite
      ...
    <separating header>:
      <statement> #suite
      <statement> #suite
      ...
    ...
  }

  ◊strong{suite}

  Sequence of statemnets. To ◊em{execute} a suite means to execute its sequence of statements, in order.

  ◊strong{Execution procedure for sequence of statements}

  ◊bullet-list{
    Execute the first statement


    unless directed otherwise, execute the rest.
  }

  ◊strong{Conditional Statement}

  ◊right-note{
    1 statement
    3 clauses
    3 headers
    3 suites
  }
  ◊highlight['python]{
    def absolute_value(x):
      if x < 0:
        return -x
      elif x == 0
        return 0
      else:
        return x
  }

  ◊strong{Execution procedure for conditional statements}
  ◊bullet-list{
    Each clause is considered in order.


    Evaluate the header's expression


    If it is a true value, execute the suite & skip the remaining clauses.
  }

  ◊strong{Conditional syntax}
  ◊bullet-list{
    Always starts with ◊mono{if} clause.


    Zero or more ◊mono{elif} clause.


    Zero or one ◊mono{else} clause, always at the end.
  }

  ◊right-note{
    ◊image[#:width "100%" #:border #f "boole.gif"]
    George Boole
  }

  ◊strong{Boolean contexts}

  Places in python code where all the matters about the expression that you put there is wether it is ◊mono{True} or ◊mono{False}.


  ◊red-light{False Values}
  ◊indented{
    ◊mono{
      False
      0
      ''
      None
    }
  }

  ◊red-light{True Values}
  ◊indented{
    ◊mono{
      True
      Anything else
    }
  }

  ◊strong{Execution procedure for while statements}
  ◊bullet-list{
    Evaluate the header's expression


    If it is a true value, execute the (whole) suite, then return to step 1.
  }

◊(orange-line)
◊left-note{◊small-num{◊red{◊num{4}}}}
◊red-title{Lecture}

  ◊strong{Fibonacci Sequence}

  ◊mono{0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987}

  The next fibonacci number is the sum of the current one and its predecessor.

  ◊right-note{
    ◊image[#:width "100%" #:border #f "fib-spiral.png"]
  }
  You can make a ◊green{golden spiral} by tiling together squares who's side lengths are fibonacci numbers.

  When designing an iterative function it's important to think about what information you need to keep track of in order to perform iteration.

  ◊strong{Designing Functions}
  ◊red-light{better}
  ◊indented{
    ◊mono{
      more redable
      more general
    }
  }

  ◊strong{function's domain}
  ◊indented{set of all inputs it might possibly take as arguments}

  ◊strong{function's range}
  ◊indented{set of output values it might possibly return}

  ◊strong{functions's behavior}
  ◊indented{relationship it creates between input and output}

  ◊highlight['python]{
    def square(x):
      return x * x
  }

  ◊right-note{
    ◊mono{yes}
    ◊image[#:width "100%" #:border #f "scissors.png"]
    ◊red-light{No}
    ◊image[#:width "100%" #:border #f "swiss-army.png"]
  }

  ◊left-note{◊red-light{domain}}
  ◊mono{real numbers}

  ◊left-note{◊red-light{range}}
  ◊mono{non-negative real numbers}

  ◊left-note{◊red-light{behavior}}
  ◊mono{return value is the square of the input}

  ◊strong{heuristics}

  ◊bullet-list{
    One function one job


    Don't repeat yourself


    Define functions generally
  }


  ◊strong{Higher Order Functions}

    Function that takes another function as an argument or returns a function as a return value.

    ◊bullet-list{
      Express general methods of computation


      Remove repetition from programs


      Separate concerns among functions.
    }

  ◊strong{Generalizing Patterns with Arguments}

  ◊right-note{◊red-light{specific}}
  ◊highlight['python]{
    def area_square(r):
      return r * r

    def area_circle(r):
      return r * r * pi

    def area_hexagon(r):
      return r * r * 3 * sqrt(3) / 2
  }

  ◊right-note{◊mono{general}}
  ◊highlight['python]{
    def area(r, shape_constant):
      assert r > 0, 'A length must be positive'
      return r * r * shape_constant

    def area_square(r):
      return area(r, 1)

    def area_circle(r):
      return area(r, pi)

    def area_hexagon(r):
      return area(r, 3 * sqrt(3) / 2)
  }

  ◊strong{Generalizing Over Computational Processes}

  Common structure among functions may be a computational process, rather than a number.

  ◊right-note{◊red-light{specific}}
  ◊highlight['python]{
    def sum_naturals(n):
    """Sum the first N natural numbers.

    >>> sum_naturals(5)
    15
    """
    total, k = 0, 1
    while k <= n:
      total, k = total + k, k + 1
    return total

    def sum_cubes(n):
      """Sum the first N bbuces of natural numbers.

    def sum_cubes(5)
      225
      """
      total, k = 0, 1
      while k <= n:
        total, k = total + pow(k,3), k + 1
      return total
  }

  ◊right-note{◊mono{general}}
  ◊highlight['python]{
    def identity(k):
      return k
    def cue(k):
      return pow(k,3)

    def summation(n,term):
      """Sum the first N terms of a sequence.

      >>> summation(5, cube)
      225
      """
      total, k = 0, 1
      while k <= n:
        total, k = total + term(k), k + 1
      return total

    def sum_naturals(n):
      """Sum the first N natural numbers.

      >>> sum_naturals(5)
      15
      """
      return (n, identity)

    def sum_cubes(n):
      """Sum the first N bbuces of natural numbers.

      >>> sum_cubes(5)
      225
      """
      return(n,cube)
  }

  ◊strong{Functions as return values}

  Functions defined within other function bodies are bound to names in a ◊em{local} frame.

  Operators can also be call-expressions so long as they evaluate to a function.

  ◊strong{Functions are first-class values} they can be passed as arguments or returned as return values.

◊(orange-line)
◊left-note{◊small-num{◊red{◊num{5}}}}
◊red-title{Lecture}

  ◊strong{Environment for Higher-Order Functions}

  ◊strong{Procedure for applying a user-defined function}
  ◊bullet-list{
    Create a new frame


    Bing formal parameters to arguments


    Execute the body
  }


  Return statements bring information from a local frame back to the frame that was the current frame when the function was called in the first place.

  Every user-defined function has a parent frame (often global)

  The parent of a function is the frame in which it was defined

  Every local frame has a parent frame (often global)

  The parent of a frame is the parent of the function called

  ◊strong{When function is defined}

  ◊bullet-list{
    Create a function value: ◊mono{func <name>(<formal parameters>) [parent=<parent>]}.


    Its parent is the current frame.


    Bind ◊mono{<name>} to the function value in the current frame.
  }

  ◊strong{When function is called}

  ◊bullet-list{
    Add a local frame, titled with the ◊mono{name} of the function being called.


    Copy the parent of the function to the local frame: ◊mono{[parent=<label>]}.


    Bind the ◊mono{<formal parameters>} to the arguments in the local frame.


    Execute the body of the function in the environmnet that starts with the local frame.
  }

  Local names are ◊em{not} visible to other (non-nested) functions

  ◊strong{Self Reference}

  Functions can refere to themselves within their own body


  ◊right-note{
    print output
    ◊mono{
      1
      3
      5
    }
  }
  ◊highlight['python]{
    def print_all(x):
      print(x)
      return print_all

    print_all(1)(3)(5)

  }

  ◊strong{Lambda Expressions}
    Expressions that evaluate to functions

  We can bind names to lambda expressions so that we can refer to refer to them later, like so:

  ◊highlight['python]{
    square = lambda x: x * x
  }
  ◊left-note{
    ◊red-light{READ}
  }
  A function with formal parameter x that returns the value of ◊mono{x * x}

  Alternatively we can apply the lambda expression straight away in a call expression where the operator in the operator called on some argument.

  ◊highlight['python]{
    (lambda x: x * x)(3)
  }

  Lambda doesn't have a ◊mono{return} keyword

  Return expression is written directly after cullen without using the ◊mono{return} keyword.

  Lambda expressions are not common in Python, but are important in general.

  Lambda expressions in Python cannot contain statement.

  ◊strong{Lambda Expressions vs Def Statements}


  ◊right-note{
    ◊mono{lambda}
     create the function, and then bind it to a name
     ◊mono{def statement}
     function is created and bound to a name at the same time}
  ◊bullet-list{
    Both create a function with the same domain, range, and behavior.


    Both function have as their parent the frame in which they were defined.


    Both bind that function to the name square.

    Only the ◊mono{def} statement gives a function an intrinsic name.
  }

  ◊right-note{greek letter for ◊em{lambda}}
  In an enviroment diagram the functions created using lambda are referred to as ◊${\lambda}

◊(orange-line)
◊left-note{◊small-num{◊red{◊num{6}}}}
◊right-note{◊num{◊blue{09.09.17}}}
◊red-title{Lecture}

  ◊left-note{◊orange{●}}
  ◊strong{Recursive Function}

  Function that calls itself, either directly or indirectly. To execute their body recursive functions often apply themselves.

  ◊strong{Structure}

  ◊bullet-list{
    Standard ◊mono{def} statement.


    Conditional statement checks for ◊strong{base cases}.


    Bases cases are evaluated ◊em{without} recursive calls.


    Recursive cases are evaluated ◊em{with} recursive calls.


    Each recursive call solves a simpler problem than the last.
  }
  ◊strong{Example}

  ◊right-note{recursive implementation of ◊em{factorial}}
  ◊highlight['python]{
    def fact(n):
      if n == 0:
        return 1
      else:
        return n * fact(n-1)
  }

  ◊strong{Iteration vs Recursion}
  ◊bullet-list{
  Iteration is a special case of recursion


  Interation uses variables to keep track of computation. Recursion uses frames.
  }

  ◊strong{Verifying Recursive Function}
  ◊bullet-list{
    Verify base case.


    Don't get caught up on implementation, instead focus on ◊em{correct behavior}.


    In order to verify that ◊mono{func(n)} is correct, assume ◊mono{func(n-1)} is correct
  }

  ◊left-note{◊orange{●}}
  ◊strong{Mutual Recursion}
  When two functions call each other. At least one of said functions must have a base case.


  ◊strong{Luhn Algorithm}
    ◊right-note{Used to verify credit card numbers}
    ◊bullet-list{
      From the rightmost digit, moving left double the value of every second digit; if product of this doubling operation is greater than 9, then sum the digits of the product.


      Sum all the digits, the credit card number is valid if the ◊mono{Luhn sum} is a multiple of 10
    }

  ◊strong{Recursion to Iteration}
    ◊bullet-list{
      Figure out what state must be maintained by the interative function.


      Look at what gets passed in to each recursive call, and what gets returned.
    }

  ◊strong{Converting Iteration to Recursion}
    ◊bullet-list{
      The state of an iteration can be passed as arguments


      Iterative functions update via assignments. Recursive functions update using recursive calls.
    }

◊(orange-line)
◊left-note{◊small-num{◊red{◊num{7}}}}
◊right-note{◊num{◊blue{09.09.17}}}
◊red-title{Lecture}

  ◊strong{Order of Recursive Calls}

  When you make a function call you have to wait for it to return before you can do anything else.

  ◊bullet-list{
    If two implementations are equally clear, then shorter is usually better.


    When deciding how to implement something, think about which version you would like to read.
  }

  ◊left-note{◊orange{●}}
  ◊strong{Tree Recursion}

  Arises whenever executing the body of a recursive function makes more than one call to that function.

  ◊strong{example}

  ◊highlight['python]{
    def fib(n):
    if n == 0:
      return 0
    elif n == 1:
      return 1
    else:
      return fibb(n-2) + fib(n-1)
  }

  Computational process of fib evolves into a tree structure.

  ◊mono{@trace} is a decorator you get from ◊mono{from ucb import trace} you place it with an @ sign just before the function that you want to define. It changes the behavior of the function to print out when it gets called and when it returns.

  The tree recursion process can ◊em{highly} repetitive.

  ◊strong{Counting Partitions}

  Recursive decomposition: finding simpler instances of the problem.
