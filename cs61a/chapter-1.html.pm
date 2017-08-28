#lang pollen

◊red-title{Chapter 1}
◊small-num{07.27.17}

◊(nobar)

◊;---------- START

◊(orange-line)
◊left-note{◊small-num{◊red{1.1}}}
◊red-title{Getting Started}

  Commerce, communication, science, art, leisure, and politics have all been reinvented as computational domains.

  All computing begins with representing information, specifying logic to process it, and designing abstractions that manage the complexity of that logic.

◊(orange-line)
◊left-note{◊small-num{◊red{1.1.1}}}
◊red-title{Programming in Python}

 Throughout its history, Python's developers have emphasized the human interpretability of Python code.

◊(orange-line)
◊left-note{◊small-num{◊red{1.1.3}}}
◊red-title{Interactive Sessions}

  In an interactive Python session, you type some Python code after the prompt, ◊mono{>>>}. To start an interactive session, type ◊mono{python 3} at a terminal prompt.

◊(orange-line)
◊left-note{◊small-num{◊red{1.1.4}}}
◊red-title{First Example}

  Python has built-in support for a wide range of common programming activities, such as manipulating text, displaying graphics, and communicating over the Internet.

  ◊left{◊mono{import}}
  ◊indented{Loads information for accessing data on the internet. In particular, it makes function ◊mono{urlopen} available.}

  ◊left{◊mono{urlopen}}
  ◊right-note{
    ◊mono{url}
    the location of ◊em{something} in the internet
  }
  ◊indented{Can access content at a uniform resource locator.}

  Computer programs at their core consists of instructions to either
  ◊bullet-list{
    Compute some value


    Carry out some action
  }

  In python ◊strong{statements} describe actions, and ◊strong{expressions} describe computations.

  ◊left-note{◊orange{●}}
  The assignment statement

  ◊highlight['python]{
    >>> shakespeare = urlopen('http://composingprograms.com/shakespeare.txt')
  }

  associates the name shakespeare with the value of the expression that follows =.


  ◊left-note{◊orange{●}}
  Functions

  encapsulate logic that manipulates data.

  ◊left-note{◊orange{●}}
  Objects

  seemlessly bundle together data and the logic that manipulates data, in a way that manages the complexity of both.

  ◊left{◊mono{set}}
  ◊indented{A type of object, one that supports set operations like computing intersections and membership.}

  ◊left-note{◊orange{●}}
  Interpreters

  ◊right-note{in the end we will find that functions are objects, objects are functions, and interpreters are instances of both}
  ◊indented{
    Evaluating compound expressions requires a precise procedure that interprets code in a predictable way. A program that implements such a procedure, evaluating compound expressions, is called an interpreter.

    Interpreters for programming languages are unique in their generality and flexibility.

  }

  ◊left-note{◊orange{●}}
  Errors

  ◊right-note{◊mono{computer = powerful + stupid}}
  Computers are tremendously fast and flexible, they are also extremely rigid.

  Learning to interpret errors and diagnose the cause of unexpected errors is called ◊em{debugging}

  ◊bullet-list{
    ◊strong{test incrementally}  all well-written programs are composed of small, modular components that can be tested individually.


    ◊strong{isolate errors} when trying to diagnose a problem, trace the error to the smallest fragment of code you can before trying to correct it.


    ◊strong{check your assumptions} know your assumptions, then focus your debugging effort on verifying that your assumptions actually hold.


    ◊strong{consult others} a lot of valuable programming knowledge is shared in the process of group problem solving.
  }

◊(orange-line)
◊left-note{◊small-num{◊red{1.2}}}
◊red-title{Elements of programming}

  Programming languages beyond being the means for instructing a computer to perform tasks, also serve as a framework within which we organize our ideas about computational processes. Thus, programs must be written for people to read, and only incidentally for machines to execute.

  Every powerful language has three mechanisms for combining simple ideas to form more complex ideas.

  ◊bullet-list{
    ◊strong{primitive expressions and statements} which represent the simplest building blocks that the language provides.


    ◊strong{means of combination} by which compound elements are built from simpler ones.


    ◊strong{means of abstraction} by which compound elements can be named and manipulated as units.
  }

  In programming, we deal with two kinds of elements: functions and data. Informally, data is stuff that we want to manipulate, and functions describe the rules for manipulating the data

  ◊left-note{◊orange{●}}
  Expressions

  describe a computation and evaluate to a value.

  ◊right-note{math expressions use ◊strong{infix} notation where operators are placed between operands}

  ◊left-note{
    ◊mono{numbers}
    ◊mono{math operators}
  }
  ◊strong{primitive expressions}

  Numbers may be combined with mathematical operators to form compound expressions

  ◊highlight['python]{
    >>> 1/2 + 1/4 + 1/8 + 1/16 + 1/32 + 1/64 + 1/128
    0.9921875
  }

  ◊right-note{operators and operands are both expressions}
  all expressions can use ◊strong{function} notation
  ◊highlight['python]{
    >>> operator(operand, operand)
  }

  ◊strong{evaluation procedure}

  ◊bullet-list{
    evaluate operator and operand subexpressions


    apply the ◊strong{function} that is the value of the operator subexpression to the ◊strong{arguments} that are the values of the operand subexpression.
  }

  The order of the arguments in a call expression is non-trivial.

  ◊red-light{advantages of function notation}

  ◊bullet-list{
    Unlike with infix notation functions can take an arbitrary number of arguments.


    Because the fuction name always precedes its arguments, there's no ambiguity

  }
