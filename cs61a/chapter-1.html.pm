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
  ◊red-light{assignment statement}

  ◊highlight['python]{
    >>> shakespeare = urlopen('http://composingprograms.com/shakespeare.txt')
  }

  associates the name shakespeare with the value of the expression that follows =.


  ◊left-note{◊orange{●}}
  ◊red-light{Functions}

  encapsulate logic that manipulates data.

  ◊left-note{◊orange{●}}
  ◊red-light{Objects}

  seemlessly bundle together data and the logic that manipulates data, in a way that manages the complexity of both.

  ◊left{◊mono{set}}
  ◊indented{A type of object, one that supports set operations like computing intersections and membership.}

  ◊left-note{◊orange{●}}
  ◊red-light{Interpreters}

  ◊right-note{in the end we will find that functions are objects, objects are functions, and interpreters are instances of both}
  ◊indented{
    Evaluating compound expressions requires a precise procedure that interprets code in a predictable way. A program that implements such a procedure, evaluating compound expressions, is called an ◊em{interpreter}.

    Interpreters for programming languages are unique in their generality and flexibility.

  }

  ◊left-note{◊orange{●}}
  ◊red-light{Errors}

  ◊right-note{◊mono{computer = powerful + stupid}}
  Computers are tremendously fast and flexible, they are also extremely rigid.

  Learning to interpret errors and diagnose the cause of unexpected errors is called ◊em{debugging}.

  ◊bullet-list{
    ◊strong{test incrementally}  all well-written programs are composed of small, modular components that can be tested individually.


    ◊strong{isolate errors} when trying to diagnose a problem, trace the error to the smallest fragment of code you can before trying to correct it.


    ◊strong{check your assumptions} know your assumptions, then focus your debugging effort on verifying that your assumptions actually hold.


    ◊strong{consult others} a lot of valuable programming knowledge is shared in the process of group problem solving.
  }


◊(orange-line)
◊left-note{◊small-num{◊red{1.2.1}}}
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
  ◊red-light{Expressions}

  describe a computation and evaluate to a value.

  ◊right-note{math expressions use ◊strong{infix} notation where operators are placed between operands}

  ◊left-note{
    ◊mono{numbers}
    ◊mono{names}
    ◊mono{strings}
  }
  ◊strong{primitive expressions}

  Numbers may be combined with mathematical operators to form compound expressions

  ◊highlight['python]{
    >>> 1/2 + 1/4 + 1/8 + 1/16 + 1/32 + 1/64 + 1/128
    0.9921875
  }

  ◊right-note{operators and operands are both expressions}
  ◊strong{call expression}
  ◊highlight['python]{
    >>> operator(operand, operand)
  }
  Operands can themselves be call expressions.

  ◊strong{evaluation procedure}

  ◊right-note{The order of the arguments in a call expression is non-trivial.}
  ◊bullet-list{
    evaluate operator and operand subexpressions


    apply the ◊strong{function} that is the value of the operator subexpression to the ◊strong{arguments} that are the values of the operand subexpression.
  }


  ◊strong{advantages of function notation}

  ◊bullet-list{
    Unlike with infix notation functions can take an arbitrary number of arguments.


    Because the fuction name always precedes its arguments, there's no ambiguity.


    expressions can be explicitly ◊em{nested}.

  }


◊(orange-line)
◊left-note{◊small-num{◊red{1.2.3}}}
◊red-title{Importing Library Functions}

  Python describes a very large number of functions and organizes them into modules, which together comprise the python library. To use these functions one imports them.

  ◊(orange-line)
  ◊left-note{◊small-num{◊red{1.2.4}}}
  ◊red-title{Names and Environment}

    A critical aspect of a programming language is the means it provides for using names to refer to computational objects. If a value has been given a name, we say that the name binds to the value.

    Assignment is the simplest means of abstraction. It allows us to use simple names to refer to the results of compound operations.

    The possibility of binding names to values and later retrieving those values by name means that the interpreter must maintain some sort of memory that keeps track of the names, values, and bindings. This memory is called an ◊strong{environment}.

    When a name is bound to a new value through assignment, it is no longer bound to any previous value.

    When executing an assignment statement, Python evaluates the expression to the right of = before changing the binding to the name on the left. Therefore, one can refer to a name in the right-side of the expression, even if it is the name to be bound by the assignment statement.

    ◊highlight['python]{
      >>> x = 2
      >>> x = x + 1
      >>> x
      3
    }

    We can also assign multiple values to multiple names in a single statement, where names on the left of ◊mono{=} and on the right of ◊mono{=} are separated by commas.

    ◊highlight['python]{
      >>> area, circumference = pi * radius * radius, 2 * pi * radius
      >>> area
      314.1592653589793
      >>> circumference
      62.83185307179586
    }

    Changing the value of one name does not affect other names

    ◊highlight['python]{
      >>> radius = 11
      >>> area
      314.1592653589793
      >>> area = pi * radius * radius
      380.132711084365
    }


◊(orange-line)
◊left-note{◊small-num{◊red{1.2.5}}}
◊red-title{Evaluating Nested Expressions}

  The evaluation procedure is recursive in nature; that is, it includes, as one of its steps, the need to invoke the rule itself.

  ◊right-note{leaf expressions represent either functions or numbers}
  evaluating the root of an ◊em{expression tree} requires first evaluating the branches.

  ◊strong{eval­u­a­tion pro­ce­dure for primitive expressions}

  ◊bullet-list{
    A numeral evaluates to the number it names


    A name evaluates to the value associated with that name in the current environment
  }

  Environments provide the context in which evaluation takes place

  statements are not evaluated but executed

  ◊strong{Pure functions}

  Have some input (their arguments) and return some output (the result of applying them).
  They have the property that applying them has no effects beyond returning a value. Moreover, a pure function must always return the same value when called twice with the same arguments.

  ◊left-note{◊mono{print}}
  ◊strong{Non-pure functions}

  ◊right-note{◊mono{none} a special python for representing nothing}
  In addition to returning a value, applying a non-pure function can generate side effects, which make some change to the state of the interpreter or computer


◊(orange-line)
◊left-note{◊small-num{◊red{1.3}}}
◊red-title{Defining New Functions}

  ◊strong{function definitions}

  A  powerful abstraction technique by which a name can be bound to a compound operations, which can then be reffered to as a unit.

  Function definitions consist of a def statement that indicates a <name> and a comma-separated list of named <formal parameters>, then a return statement, called the function body, that specifies the <return expression> of the function, which is an expression to be evaluated whenever the function is applied:

  ◊right-note{The second line must be indented}
  ◊highlight['python]{
    def <name>(<formal parameters>):
      return <return expression>
  }

  User-defined functions are used in exactly the same way as built-in functions.

  Both def statements and assignment statements bind names to values, and any existing bindings are lost.

◊(orange-line)
◊left-note{◊small-num{◊red{1.3.1}}}
◊red-title{Environments}

  An environment in which an expression is evaluated consists of a sequence of ◊em{frames}, depicted as boxes. Each frame contains ◊em{bindings}, each of which associates a name with its corresponding value. Functions appear in environment diagrams as well.

  Each function is a line that starts with func, followed by the function name and formal parameters. Built-in functions such as mul do not have formal parameter names, and so ◊mono{...} is always used instead.

  The name appearing in the function is called the ◊em{intrinsic} name. The name in a fram is a ◊em{bound} name. Different names may refer to the same function, but that function itself has only one ◊em{intrinsic name}.

  The name bound to a function in a frame is the one used during evaluation. The intrinsic name of a function does not play a role in evaluation.

  ◊strong{function signatures}

  Functions differ in the number of arguments that they are allowed to take. Providing more or fewer arguments will result in an error. A description of the formal parameters of a function is called the fuction's signature.

◊(orange-line)
◊left-note{◊small-num{◊red{1.3.2}}}
◊red-title{Calling User-Defined Function}

  Applying a user-defined function introduces a second local frame, which is only accessible to that function. To apply a user-defined function to some arguments:

  ◊bullet-list{
    Bind the arguments to the names of the function's formal parameters in a new ◊em{local} frame.


    Execute the body of the function in the enviroment that starts with this frame.
  }

  The environment in which the body is evaluated consists of two frames: first the local frame that contains formal parameter bindings, then the global frame that contains everything else. Each instance of a function application has its own independent local frame.

  ◊strong{name evaluation}

  ◊right-note{a name is evaluated to the value associated with that name in the current environment}
  A name evaluates to the value bound to that name in the earliest frame of the current enviroment in which that name is found.

  Our conceptual framework of environments, names, and functions constitutes a ◊em{model of evaluation}

◊(orange-line)
◊left-note{◊small-num{◊red{1.3.4}}}
◊red-title{Local Names}

  The choice of names for the function's formal parameters should not affect the function's behavior. Consequently the parameter names of a function must remain local to the body of a the function.

  The ◊em{scope} of a local name is limited to the body of the user-defined function that defines it.

◊(orange-line)
◊left-note{◊small-num{◊red{1.3.5}}}
◊red-title{Choosing Names}

  Well-chosen function and parameter names are essential for the human interpretability of function definitions.

  ◊strong{shared set of conventions}

  ◊bullet-list{
    Function names are lowercase, with words separated by underscores. Descriptive names are encouraged.


    Function names typically evoke operations applied to arguments by the interpreter, or the name of the quantity that resuslts.


    Parameter names are lowercase, with words separated by underscores. Single-word names are preferred.


    Parameter names should evoke the role of the parameter in the function, not just the kind of argument that is allowed.


    Single letter parameter names are acceptable when their role is obvious, but avoid "l" (lowercase ell), "O" (capital oh), or "I" (capital i) to avoid confusion with numerals.
  }

◊(orange-line)
◊left-note{◊small-num{◊red{1.3.6}}}
◊red-title{Functions as Abstractions}

  Function definiton should be able to suppress details. A programmer should not need to know how the function is implemented in order to use it.

  ◊strong{aspects of functional abstraction}

  The ◊em{domain} of a function is the set of arguments it can take. The ◊em{range} of a function is the set of values it can return. The ◊em{intent} of a function is the relationship it computes between inputs and outputs (including side effects). Understanding functional abstractions via their domain, range and intent is critical to using them correctly in a complex program.

◊(orange-line)
◊left-note{◊small-num{◊red{1.3.7}}}
◊red-title{Operators}

  Infix notation can be nested, just like call expressions. Python applies the normal mathematical rules of operator precedence, which dictate how to interpret a compound expression with multiple operators.

  ◊highlight['python]{
    >>> 2 + 3 * 4 + 5
    19
  }

  The nesting in function notation is more explicit that infix notation, but also harder to read. Python also allows subexpression grouping with parentheses, to override the normal precendence rules or to make the nested structure of an expression more explicit.

  Python provides two infix operators for divison: ◊mono{/} and ◊mono{//} The former is normal division, the latter rounds the result down to an integer.

  These two operators are shorthand for the ◊mono{truediv} and ◊mono{floordiv} functions.

  ◊right-note{Idiomatic Python prefers operators over call expressions for simple mathematical operations}

  ◊highlight['python]{
    >>> from operator import truediv, floordiv
    >>> truediv(5, 4)
    1.25
    >>> floordiv(5, 4)
    1
  }


◊(orange-line)
◊left-note{◊small-num{◊red{1.4}}}
◊red-title{Designing Functions}

  Fundamentally, the qualities of good functions all reinforce the idea that functions are abstractions.

  ◊bullet-list{
    Each function should have exactly one job. That job should be identifiable with a short name and characterizable in a single line of text. Functions that perfom multiple jobs in sequence should be divided into multiple functions.


    ◊right-note{DRY}
    ◊strong{Don't repeat yourself} is a central tenet of software design. Logic should be implemented once, given a name, and applied multiple times. If you find yourself copying and pasting a block of code, you have probably found an opportunity for functional abstraction.


    Functions should be defined generally.
  }


◊(orange-line)
◊left-note{◊small-num{◊red{1.4.1}}}
◊red-title{Documentation}

  a function definition will often include documentation describing the function, called a ◊em{docstring}, which must be indented along with the function body. Docstrings are conventionally triple quoted. The first line describes the job of the function in one line. The following lines can describe arguments and clarify the behavior of the function.

  When writing Python program, include docstrings for all but the simplest functions. Remember, code is written only once, but often read many times.

  ◊right-note{comments don't appear in python's help and they are ignored by the interpreter}
  ◊strong{comments} in python can be attached to the end of a line following the ◊mono{#} symbol.


◊(orange-line)
◊left-note{◊small-num{◊red{1.4.2}}}
◊red-title{Default Argument Values}

  A consequence of defining general functions is the introduction of additional arguments. In Python, we can provide default values for the arguments of a function. When calling that function, arguments with default values are optional. If they are not provided, then the default value is bound to the formal parameter name instead.

  ◊highlight['python]{
    >>> def pressure(v, t, n=6.022e23):
        """Compute the pressure in pascals of an ideal gas.

        v -- volume of gas, in cubic meters
        t -- absolute temperature in degrees kelvin
        n -- particles of gas (default: one mole)
        """
        k = 1.38e-23  # Boltzmann's constant
        return n * k * t / v
  }

  In the ◊mono{def} statement header, ◊mono{=} does not perform assignment, but instead indicates a default value to use when the ◊mono{pressure} function is called. By contrast, the assignment statement to ◊mono{k} in the body of the function binds the name ◊mono{k} to an approximation of Boltzmann's constant.

  Most data values used in a function's body should be expressed as default values to named arguments, so they are easy to inspect and can be changed by the function caller. Values that never change, can be bound in the function body or in the global frame.


◊(orange-line)
◊left-note{◊small-num{◊red{1.5}}}
◊red-title{Control}

  ◊em{control statements} allow us to make comparisons and to perform different operations depending on the result of a comparison. They are statements that control the flow of a program's execution based on the results of logical comparisons.

  Statements have no value. Instead of computing something, control statements determine what the interpreter shoudl do next.


◊(orange-line)
◊left-note{◊small-num{◊red{1.5.1}}}
◊red-title{Statements}

  ◊left-note{
    ◊mono{
      assignment
      def
      return
    }
    }

  Rather than being evaluated, statements are executed. Each statement describes some change to the interpreter state. Executing statements can involve evaluating subexpressions contained within them.

  Statements govern the relationship among different expressions in a program and what happens to their results.


◊(orange-line)
◊left-note{◊small-num{◊red{1.5.2}}}
◊red-title{Compound Statements}

  Python code is a sequence of statements. A simple statement is a single line that doesn't end in a colon. A compount statement is so called because it is composed of other statements. Compound statements typically span multiple lines and start with a one-line header ending in a  colon, which identifies the type of statement. Together a header and an indented suite of statements is called a clause. A compound statement consists of one or more clauses.

  ◊highlight['python]{
  <header>:
    <statement>
    <statement>
    ...
  <separating header>:
    <statement>
    <statement>
  }

  ◊bullet-list{
    Expressions return statements.


    Assignment statements are simple statements.


    A ◊mono{def} statement is a compound statement. The suite that follows defines the function body.
  }

  Specialized evaluation rules for each kind of header dictate when and if the statements in its usite are executed. The header controls its suite. In the case of ◊mono{def} the return expression is not evaluated immediatly, but instead stored for later use when the defined fucntion is eventually called.

  ◊red-light{multi-line programs}
  ◊bullet-list{
    To execute a sequence of statements, execute the first statement. If that statement doesn't redirect control, then proceed to execute the rest of the sequence of statements, if any remain.
  }

  ◊left-note{◊mono{recursion}}
  A sequence can be decomposed into its first element and the rest of its elements.  The ◊em{rest} of a sequence of statements is itself a sequence of statements.


◊(orange-line)
◊left-note{◊small-num{◊red{1.5.3}}}
◊red-title{Defining Functions II: Local Assignment}

  The process of a function application terminates whenever the first ◊mono{return} statement is executed.

  Assignment statements within a function body (local assignments) cannot affect the global frame. The fact that functions can only manipulate their local environmnet is critical to creating ◊em{modular} programs, in which pure functions interact only via the values they take and return. Local assignment also plays a critical role in clarifying the meaning of complex expressions by assigning names to intermediate quantities.


◊(orange-line)
◊left-note{◊small-num{◊red{1.5.4}}}
◊red-title{Conditional Statements}

  ◊strong{Conditional statements} consists of a series of headers and suites: a required ◊mono{if} clause, an optional sequence of ◊mono{elif} clauses, and finally an optional ◊mono{else} clause:

  ◊highlight['python]{
    if <expression>:
      <suite>
    elif <expression>:
      <suite>
    else:
      <suite>
  }

  When executing a Conditional statement, each clause is considered in order. The computational process of executing a conditional clause follows.

  ◊bullet-list{
    Evaluate the header's expressions


    If it is a true value, execute the suite. Then, skip over all subsequent clauses in the conditional statement.
  }

  If the ◊mono{else} clause is reached( which only occurs if all ◊mono{if} and ◊mono{elif} expressions evaluate to false values) its suite is executed.

  ◊right-note{Every built-in kind of data in Python has both true and false values}
  ◊strong{Boolean contexts}

  ◊left-note{◊mono{
      0
      None
      False
    }
  }
  The expressions inside the header statements of conditional blocks are said to be in boolean contexts: their truth values matter to control flow, but otherwise their values are not assigned or returned.  In python ◊mono{0}, ◊mono{None}, and ◊mono{False} are false values. All other numbers are true values.

  ◊strong{boolean values}

  ◊left-note{◊mono{
      >
      <
      >=
      <=
      ==
      !=
    }
  }
  Python has two boolean values. ◊mono{True} and ◊mono{False}. Boolean values represent truth values in logical expressions. The built-in comparison operations ◊mono{>, <, >=, <=, ==, !=} return these values

  ◊highlight['python]{
    >>> 4 < 2
      False
    >>> 5 >= 5
    True
  }

  ◊strong{Boolean Operators}

  ◊left-note{
    ◊mono{
      and
      or
      not
    }
  }
  There's three basic logical operators built into Python.

  ◊highlight['python]{
    >>> True and False
      False
    >>> True or False
      True
    >>> not False
      True
  }

  Logical expressions have corresponding evaluation drocedures. These procedures exploit the fact that the truth value of logical expression can sometimes be determined without evaluating all of its subexpressions, a feature called short-circuiting.

  To evaluate the expression ◊mono{<left> and <right>:}

  ◊bullet-list{
    Evaluate the subexpression ◊mono{<left>}


    If the result is a false values ◊mono{v}, then the expression evaluates to ◊mono{v}


    Otherwise, the expression evaluates to the value of the subexpression ◊mono{<right>}
  }

  To evaluate the expression ◊mono{<left> or <right>:}

  ◊bullet-list{
    Evaluate the subexpression ◊mono{left}


    If the result is a true value ◊mono{v}, then the expression evaluates to ◊mono{v}

    Otherwise, the expression evaluates to the value of the subexpression ◊mono{<right>}
  }

  To evaluate the expression ◊mono{not <exp>:}

  ◊bullet-list{
    Evaluate ◊mono{<exp>}; the value is ◊mono{True} if the result is a false value, and ◊mono{False} if it's otherwise.
  }

  Functions that perform comparisons and return boolean values typically begin with ◊mono{is}, not followed by an underscore.


◊(orange-line)
◊left-note{◊small-num{◊red{1.5.5}}}
◊red-title{Iteration}

  ◊left-note{
    ◊mono{
      while
      <control>-C
    }
  }
  In addition to selecting which statements to execute, control statements are used to express repetition. We have already seen a form of repetition: a function is defined once, but it can be applied many times. Iterative control structures are another mechanism for executing the same statements many times.

  A ◊mono{while} clause contains a header expression followed by a suite.

  ◊highlight['python]{
    while <expression>:
      <suite>
  }

  To evaluate a ◊mono{while} clause:

  ◊bullet-list{
    Evaluate the header's expression


    If it is a true values, execute the suite, the return to step 1.
  }

  In order to prevent the suite of a while clause from being executed indefinitely, the suite should always change some binding in each pass.

  a ◊mono{while} statement that does not terminate is called an ◊strong{infinite loop}. Press ◊mono{<control>-C} to force python to stop looping.

◊(orange-line)
◊left-note{◊small-num{◊red{1.5.6}}}
◊red-title{Testing}

  ◊left-note{
    ◊mono{
      assert
    }
  }
  ◊em{Testing} a function is the act of veryfing that the function's behavior matches expectations. A ◊em{test} is a mechanism for systematically performing this verification. Tests typically take the form of another function that contains one or more sample calls to the function being tested. The returned value is then verified against an expected result. Unlike most functions, which are meant to be general, tests involve selecting and validating calls with specific argument values.  Tests also serve as documentation: they demostrate how to call a function and what argument values are appropriate.

  ◊strong{assertions}

  Programmers use ◊mono{assert} statements to verify expectations, such as the output of a function being tested. An assert statement has an expression in a boolean context,  followed by a quoted line of text that will be displayed if the expression evaluates to a false value.

  ◊highlight['python]{
    >>> assert fib(8) == 13, 'The 8th Fibonacci number should be 13'
  }

  When the expression being asserted evaluates to a true value, executing an assert statement has no effect. When it's a false values, ◊mono{assert} causes an error that halts execution.

  A test function should test several arguments, including extreme values of ◊mono{n}

  ◊highlight['python]{
    >>> def fib_test():
        assert fib(2) == 1, 'The 2nd Fibonacci number should be 1'
        assert fib(3) == 1, 'The 3rd Fibonacci number should be 1'
        assert fib(50) == 7778742049, 'Error at the 50th Fibonacci number'
  }

  When writing Python in files, rather than directly into the interpreter, tests are typically written in the same file or a neighboring file with the suffix ◊mono{_test.py}

  ◊strong{Doctests}

  Docstring may include a sample interactive session that calls the function:

  ◊highlight['python]{
    >>> def sum_naturals(n):
        """Return the sum of the first n natural numbers.

        >>> sum_naturals(10)
        55
        >>> sum_naturals(100)
        5050
        """
        total, k = 0, 1
        while k <= n:
            total, k = total + k, k + 1
        return total
  }

  Then, the interaction can be verified via the doctest module

  ◊highlight['python]{
    >>> from doctest import testmod
    >>> testmod()
    TestResults(failed=0, attempted=2)
  }

  To verify the doctest interactions for only a single function, we use a ◊mono{doctest} function called ◊mono{run_docstring_examples} Its first argument is the function to test. The second should always be the result of the expression ◊mono{globals()} a built-in function that returns the global enviroment. The third argument is ◊mono{True} to indicate that we would like 'verbose' output: ◊em{a catalog of all tests run}.

  ◊highlight['python]{
    >>> from doctest import run_docstring_examples
    >>> run_docstring_examples(sum_naturals, globals(), True)
    Finding tests in NoName
    Trying:
      sum_naturals(10)
    Expecting:
      55
    ok
    Trying:
      sum_naturals(100)
    Expecting:
      5050
    ok
  }

  When the return value of a function does not match the expected result, the ◊mono{run_docstring_examples} function will report this problem as a test failure,

  When writing Python in files, all doctests in a file can be run by starting Python with the doctest command line option:

  ◊highlight['python]{
    python3 -m doctest <python_source_file>
  }

  The key to effective testing is to write (and run) tests immediatly after implementing new functions. It is even good practice to write some tests before you implemenent. A test that applies to a single function is called a ◊strong{unit test} Exhaustive unit testing is a hallmark of good program design.
