#lang pollen

◊;---------- START
◊(nobar)◊(nobar)
◊black-title{Scheme}
◊(orange-line)

  ◊indented{Dialect of Lisp.}

◊black-title{Fundamentals}
  ◊indented{
    ◊red-light{
      primitive expressions
      combinations
    }
  }
  ◊bullet-list{
    Numbers are self-evaluating; symbols are bound to values.


    ◊right-note{◊mono{nesting ok}}
    Call expressions include an operator and ◊${0} or more operands in parentheses.


    Scheme interpreter doesn't care about indentation.
  }

◊black-title{Built-in Procedures}
  ◊indented{
    ◊mono{
      number?
      integer?
      zero?
      pair?
      null?
      list
    }
  }

◊black-title{Special Forms}
  ◊indented{A combination that is not a call expression is a special form.}

◊red-light{if expression}
  ◊indented{◊code{(if ◊green{<predicate> <consequent> <alternative>})}}

◊indented{◊mono{evaluation}}
  ◊bullet-list{
    Evaluate predicate expression.


    Evaluate either consequent or alternative.
  }

◊red-light{and}
  ◊indented{◊code{(and ◊green{<e_1> ... <e_n>})}}

◊red-light{or}
  ◊indented{◊code{(or ◊green{<e_1> ... <e_n>})}}

◊red-light{new symbol}
  ◊indented{◊code{(define ◊green{<symbol> <expression>})}}

◊red-light{new procedure}
  ◊indented{◊code{(define (◊green{<symbol> <formal parameters>}) ◊green{<body>})}}
  ◊bullet-list{
    Creates a procedure and binds it to a symbol.
  }

◊red-light{lambda expressions}
  ◊indented{◊code{(lambda (◊green{<formal parameters>}) ◊green{<body>})}}
  ◊bullet-list{
    Evaluate to anonymous procedures.
  }

◊black-title{Pairs and Lists}
  ◊indented{
    ◊red-light{◊yellow_wash{cons}} ◊code{Two-argument procedure that creates a pair.}
    ◊red-light{◊yellow_wash{car}} ◊code{Procedure that returns the first element of a pair.}
    ◊red-light{◊yellow_wash{cdr}} ◊code{Procedure that returns the second element of a pair.}
    ◊red-light{◊yellow_wash{nil}} ◊code{The empty list.}
  }
◊bullet-list{
  A non-empty list in Scheme is a pair in which the second element is ◊strong{nil} or a Scheme list.


  Scheme lists are written in parentheses separated by spaces.


  A dotted list has some value for the second element of the last pair that is not a list.


  ◊mono{◊yellow_wash{no dot = well formed list}}


  ◊red-light{dot = malformed list}
}

◊black-title{Symbolic Programming}
  ◊indented{Symbols normally refer to values; how do we refer to symbols? I Scheme we use quotation to refer to symbols directly.}

  dots can be used in a quoted list to specify the second element of the final pair.
  notice dots appear in the output only of ill-formed lists.

◊black-title{Python Similarities}
  ◊bullet-list{
    lexical scope


    enviroment model
  }

◊black-title{Python Differences}
  ◊bullet-list{
    returns bound symbol after creating new symbol/


    function = procedure


    only ◊code{#f}, ◊code{false} ◊code{False} evaluate to ◊code{False}
  }


◊(nobar)◊(nobar)
◊(orange-line)
◊red-title{Questions}
  ◊right-note{◊green{resolved}}
  is this because the multiplicative identity is one?
  ◊highlight['scheme]{
    scm> (*)
    1
  }
  ◊right-note{◊green{resolved}}
  is this because the additive identity is zero?
  ◊highlight['scheme]{
    scm> (+)
    0
  }
  ◊green{resolved}

◊black-title{Exceptions}
◊(orange-line)

◊black-title{Handling Errors}
  ◊indented{
    Sometimes, computer programs behave in non-standard ways.
    The goal thus is to write programs that can handle any conceivable difficulty you throw at them. Different types of programs respond to errors differently. If for instance your program is web application then when faced with errors you probably want your program to continue to run if that's a possibility. But on the other hand if your program is an interpreter then you probably want your program to stop as soon as it encounters any error. So that you can known that something is wrong.
    There's no one true way for handling errors, but it is the case that whenever you write a program you have to think about how your program is going to handle errors if and when they occur.
  }

◊black-title{Exceptions}
  ◊indented{built-in mechanism to declare and respond to exceptional conditions.
  An exception is raised whenever an error occurs.
  By default unhandled exception will cause execution to halt.
  To prevent this from happening we can handle exceptions from within the program.}
  ◊bullet-list{
    Exceptions are objects


    Enable non-local continuations of control:
      ◊bullet-list{If ◊strong{◊code{f}} calls ◊strong{◊code{g}} and ◊strong{◊code{g}}  calls ◊strong{◊code{h}}, exceptions can shift control from ◊strong{◊code{h}} to ◊strong{◊code{f}} without waiting for ◊strong{◊code{g}} to return.}
  }

◊black-title{Mechanism}

◊mono{◊yellow_wash{Part 1}}
◊red-light{Raising Exceptions}

  ◊mono{assert statement}
  ◊indented{
    raises exception of type ◊red{◊code{AssertionError}}
    ◊code{◊blue{assert} <expression>, <string>}
  }
  ◊indented{Assertions are designed to be used liberally.
  They ignore assertions run: ◊mono{python3 -O}.
  To check wether assertions are enabled run:  ◊mono{bool__debug__}
  }

  ◊mono{raise statement}
    ◊indented{◊code{◊blue{raise} <expression>}
    ◊code{<expression>} must evaluate to a subclass of BaseException or an instance of one.}
    ◊code{◊blue{TypeError}} ▻ A function was passed the wrong number/type of argument.
    ◊code{◊blue{NameError}} ▻ A name wasn't found.
    ◊code{◊blue{KeyError}} ▻ A key wasn't found in a dictionary.
    ◊code{◊blue{RuntimeError}} ▻ Catch-all for problems during interpretation.



  ◊mono{try statement}
    ◊indented{handles exceptions
      ◊code{
        try:
          <try suite>
        except <exception class> as <name>:
          <except suite>
      }
    }
    ◊red-light{evaluation}
    ◊indented{
      execute ◊code{<try suite>} first. If, during the course of executing the ◊code{<try suite>}, an exception is raised that is not otherwise handled, and it's the case that the class of the exception inherits from ◊code{exception class}, then the ◊code{<except suite>} is executed, with ◊code{◊green{<name>}} bound to the exception.
    }
    ◊indented{Its a common pattern in programming that if were trying to bind a variable to a value and it doesn't work out perhaps because of something like a ◊code{◊blue{ZeroDivisionError}} then we bind that value to a default value.}

    ◊mono{multiple try statements}
    ◊indented{
      Control jumps to the except suite of the most recent try statement that handles that type of exception.
    }

◊(nobar)◊(nobar)
◊(orange-line)
◊right-note{◊red-light{Lecture 26}}
◊black-title{Interpreters}
  ◊bullet-list{
    Interpreters do a lot of error handling.


    The ability to communicate errors effectively is one of the defining characteristics of useful programming languages
  }
  ◊indented{
    Interpreters read their input as text and interpret it as a hirarchical structure.
    The task of parsing a language involves coercing a string representation of an expression into an object that is the expression itself. This means valiadating that there are no errors and then creating a hirearchical structure.
  }
  ◊red-light{Note}
  ◊indented{In any well-formed Scheme list the number of left parentheses equals that number of right parentheses.}

◊black-title{Parsing}
  ◊indented{
    Parser takes text and returns an expression.}

◊mono{lexical analysis}
  ◊indented{breaks up text into tokens.}
  ◊bullet-list{
    Iterative Process.


    Checks for malformed tokens.


    Determines types of tokens.


    Processes one line at a time.
  }

◊mono{syntactic analysis}
  ◊indented{Figures out how tokens nest into hirearchical expressions.}
  ◊bullet-list{
    Tree-recursive process.


    Balances parentheses.


    Returns tree structure.


    Processes multiple lines.
  }

◊black-title{Predictive Recursive Descent Parser}
  ◊indented{
    Inspects only k tokens to decide how to proceed, for some fixed k. Doesn't work for parcing the english language, but does work for parsing Scheme expressions.}

◊code{scheme_read}
  ◊indented{
    consumes the input tokens for exactly one expression.
  }
  ◊bullet-list{
    ◊strong{Base case:} symbols and numbers


    ◊strong{Recursive Call:} ◊code{scheme_read} sub-expressions and combines them.
  }


◊black-title{Pair Class}
  ◊indented{
    Represents Scheme pairs and lists. A list is a pair whose second element is either a list or nil.
    Scheme expression are represented as Scheme Lists.
    We call languages whose data representation is equal to their source code representation ◊em{Homoiconic}.
    Expressions are represented as Scheme Lists that encode tree structures.
  }
  ◊bullet-list{
    ◊strong{Primitive} A number evaluates to itself.


    ◊strong{Call} A call expression evaluates to its argument values combined by an operator.
  }

  ◊black-title{Handling Exceptions}
  ◊indented{
    An interactive interpreter prints information about each error
    A well-designed interactive interpreter should never halt completely when it encounters an error, Instead it should give the user an oportunity to try again in the current enviroment.
  }
