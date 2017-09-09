#lang pollen

◊red-title{Information Devices and Systems}
◊small-num{08.24.17}

◊(nobar)

◊;---------- START

◊(nobar)
◊(orange-line)
◊left-note{◊red{◊num{0}}}
◊red-title{Notes}
◊(nobar)
◊(nobar)

Circuits allow devices to interface with the real world. Processing techniques allow us to extract meaningful information from these measurements.

◊red-title{Goal}

  To build systems that can sense the real world, compute something useful and then be able to communicate or act on this information to change the enviroment.

  ◊left-note{◊blue{Imaging}}
  To get a picture of something in the real world

  ◊left-note{◊blue{Touchscreens}}
  ◊right-note{resistive and capacitance}
  To determine the position of one or more fingers from a user

  ◊left-note{◊blue{Positioning}}
  To find your location in a broader physical space


◊red-title{Requirements}

  ◊bullet-list{
    a real-world quantity to measure


    ◊right-note{near all physical quantities can be translated into measurable electrical counterparts}
    means of translating this quantity to the electrical domain


    computation to extract information from electrical readings
  }


◊red-title{Complexity}

  Modern information devices and systems often integrate many sub-systems which are quite complex even independently. Thus in thinking about these systems we require ◊strong{multi-step thinking}.


◊red-title{Circuits}

  Circuits shape the way we interact with electronic devices. Anyone hoping to create a truly ◊em{new} system needs an understanding of how actual systems are designed at both the hardware and software level.

  Building any type of complex system requires breaking it into a set of simpler sub-systems, which might themselves consist of further sub-systems.

  ◊right-note{◊blue{resistors, capacitors, current sources}}
  Electrical circuits typically consists of sub-circuits built from simple primitive building blocks◊blue{*} that place constraints on each other.


◊red-title{Effort and Flow}

  The ◊strong{effort} variable applies a force and the ◊strong{flow} variable moves in response

  ◊right-note{
    ◊blue{in electrical circuit analysis}
  }
  The ◊em{effort} variable is ◊strong{voltage}, the ◊em{flow} variable is ◊strong{current} ◊blue{*}

  Circuit concepts are relevant to understanding network analysis and signal flows in systems

◊(nobar)
◊(orange-line)
◊left-note{◊red{◊num{1}}}
◊red-title{Notes}
◊(nobar)
◊(nobar)

  ◊red-title{Linear Algebra}

  ◊bullet-list{
    The study of vectors and their transformations


    Linearity is a good first-order approximation to the complicated real world
  }


  ◊red-title{Tomography}

  ◊right-note{
    ◊blue{*}
    ◊image[#:width "150%" #:border #f "ct-scan.jpg"]
  }
  Allows us to see inside of a solid object by taking images section by section with a penetrating wave◊blue{*}.

  We must be careful not just of the number of measurements we take but rather of ◊e{which} measurements we take.

  A ◊strong{System of Equations} summarizes the known relationships between the variables we want to solve for and our measurements.

  More specifically, our measurements can be characterized as a system of ◊strong{linear} equations, because each variable relates to the measurement result by a fixed scaling factor.

  Typically we will try to express systems of equations in terms of ◊strong{vectors} and ◊strong{matrices}.


  ◊red-title{Vector}

  Ordered list of numbers

  ◊$${
    \vec{x} = \left [\begin{matrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{matrix}\right]
  }

  ◊${\vec{x}} is a vector, because it contains ◊${n} real numbers we write it as ◊${\vec{x} \in \mathbb{R^n.}}
  Each ◊${x_i} is called a ◊strong{component} or ◊strong{element} of the vector. The ◊strong{size} of a vector is the number of components it contains

  ◊red-title{Matrix}

  Rectangular array of numbers.

  ◊$${
    \left [\begin{matrix} A_{11} & \dots & A_{1n} \\ \vdots & \ddots & \vdots \\ A_{m1} & \dots & A_{mn} \end{matrix}\right]
  }

  Each ◊${A_{ij}} (where ◊${i} is the row index and ◊${j} is the column index) is a ◊strong{component} or ◊strong{element} of the matrix.

  ◊strong{System of Linear Equations}
    In a linear equation, the variables are only scaled by a constant value and added together.

  ◊$${
    \begin{align}
      3.1x_1\ &+ &2x_2 &= 1 \\
      2x_1\ &+ &-4.7x_2 &= 3
    \end{align}
  }

  Both equations use the same variables ◊${x_1, x_2} but have different coefficients to scale these variables, and sum to different amounts.
  If we create a ◊${2x2} matrix for the scaling factors, one vector for the variables and another vector for the results of the equation, we can represent the system of equations as

  ◊$${
    \left [\begin{matrix}
      3.1 & 2 \\
      2 & -4.7
    \end{matrix}\right]
    \left [\begin{matrix}
      x_1 \\
      x_2
    \end{matrix}\right]
    =
    \left [\begin{matrix}
      1 \\
      3
    \end{matrix}\right]
  }

  In general, we can represent any system of ◊${m} linear equations with ◊${n} variabbbles in the form

  ◊$${A \vec{x} = \vec{b}}

  where ◊${A} is an ◊${m \times n} matrix, ◊${\vec{x}} is a vector containing ◊${n} variables, and ◊${\vec{b}} is a vector of size ◊${m} containing the constants.

  We do this because ◊em{decoupling} the coefficients and the variables makes it easier to perform analysis on the system, expecially if the system is large.

  ◊strong{Gaussian Elimination}

  We don't only want to write systems of equations, we also want to solve them. Namely we want to find what value each variable must take in order for all equations to be valid. Gaussian elimination is an ◊strong{algorithm} for doing this that can be used to solve any arbitrarily large system of linear equations, or decide that no solution exists.

  Consider the following system of equations

  ◊$${
    \begin{align}
      x\  &+ &2y &= 1 \\
      2x\  &+ &y &= 7
    \end{align}
  }

  ◊right-note{
    ◊mono{
      adding
      substracting
      multiplying
    }
  }
  We would like to find an explicit formula for ◊${x} and ◊${y}. The Gaussian elimination approach asks us to succesively rewrite the system using operations that do not change its solution◊blue{*}

  To solve the system of equations we need to eliminate a variable from one of the equations, in order to get an explicit formula for the remaining variable.

  ◊$${
    \begin{align}
      2x\ +\ &y &= 7 \\
      -2 \times (x\ +\ &2y &= 1)
      \\ \\
      2x\ +\ &y &= 7 \\
      -2x\ +\ &4y &= -2
      \\ \\
      x\ +\ &2y &= 1 \\
      &5y &= 5
    \end{align}
  }

  Our aim is to give a ◊em{triangular structure} to our system of equations. The first equation contains all the variables. The second, one less. The third, two less, and so on.

  We start by propagating equations downwards, when were done, we propagate upwards.

  In addition to multiplication, addition and substraction, we might need to ◊strong{swap} equations around so that our top equation contains all variables.

  ◊left-note{◊red-light{**}}
  We can perform operations to equations so long as they doesn't change the solution.

  ◊strong{Algorithm Operations}

  ◊em{augmented matrix}
  ◊$${
    \left [\begin{matrix}
      5x & + & 3y & = & 5  \\
      -4x & + & y & = & 2
    \end{matrix}\right]
    \implies\
    \left[\begin{array}{cc|c}
    5 & 3 & 5 \\
    -4 & 1 & 2 \\
    \end{array}\right]
  }

  ◊bullet-list{
    Multiplying first row by 2
    ◊$${
      \left [\begin{matrix}
        10x & + & 6y & = & 10  \\
        -4x & + & y & = & 2
      \end{matrix}\right]
      \implies\
      \left[\begin{array}{cc|c}
      10 & 6 & 10 \\
      -4 & 1 & 2 \\
      \end{array}\right]
    }


    Swapping rows
    ◊$${
      \left [\begin{matrix}
        -4x & + & y & = & 2  \\
        5x & + & 3y & = & 5
      \end{matrix}\right]
      \implies\
      \left[\begin{array}{cc|c}
      -4 & 1 & 2 \\
      5 & 3 & 5 \\
      \end{array}\right]
    }


    Modifying second row by adding 2 times the first row to the second
    ◊$${
      \left [\begin{matrix}
        5x & + & 3y & = & 5  \\
        6x & + & 7y & = & 12
      \end{matrix}\right]
      \implies\
      \left[\begin{array}{cc|c}
      5 & 3 & 5 \\
      6 & 7 & 12 \\
      \end{array}\right]
    }
  }

  ◊strong{Precise Procedure for Gaussian Elimination}

  If we number our variables from ◊${1} through ◊${n} in the order they appear from left to right, to begin Gaussian Elimination we eliminate a variable ◊${i} with the following steps, begging with ◊${i = 1} and ending when ◊${i = n}

  ◊bullet-list{
    Swap rows if needed such that an equation containing variabble ◊${i} is contained in row ◊${i}.


    Divide row ◊${i} by the coefficient of variable ◊${i} in this row such that the ◊${i^{th}} row and column of the augmented matrix is ◊${1}.



    For rows ◊${j = i + 1} to ◊${n}, substract row ◊${i} times the entry in row ◊${j} and column ◊${i} to cancel the variable ◊${i}
  }

  When we say that a system of equations has a unique solution, we mean that all our variables can take on only ◊em{one} value in order for each equation to be true.

  When one of our equations is redundant, we are left with two equations but three unknown variables. and a system of equations with an infinite number of solutions

  ◊right-note{
    i.e. ◊mono{0 = 2}
  }
  When one of our equations gives us a contradiction◊blue{*}, there is no solution to this system of equations. This means the're problems with our modeling assumptions or measurement setup.

  ◊strong{Algorithm Stopping Point}

  Running Gaussian Elimination does ◊em{not} guarantee the we will be able to find a solution to the system of equations. However, running the algorithm will tell us wether or not there is ◊strong{one}, ◊strong{zero}, or ◊strong{infinitely many} solutions.

  ◊strong{single solution}
    In an augmented matrix, the portion of the matrix corresponding to the coefficient weights will have ◊green{1's} on the diagonal and ◊green{0's} everywhere elese. if ◊${m > n} the extra rows of the final augmented matrix should all be zeros.

  ◊strong{general procedure}
  First we eliminate the first unknown from all but one equations, then among the remaining equations eliminate the next possible unknown from all but one equation. Repeating this until we reach one of three situations.

  ◊bullet-list{
    ◊right-note{◊mono{unique solution}}
    For a system of ◊${m} equations and ◊${n} variables ◊${(m \geq n)}, the first ◊${n} rows of the augemented matrix have a triangular structure -- specifically, the lefmost nonzero entry in row ◊${i}  is a ◊${1} and appears in column ◊${i} for ◊${i =1 } to ◊${n}. If ◊${m > n}, exactly ◊${(m - n)} rows are all-zero.
    ◊$${
    \left[\begin{array}{ccc|c}
    1 & 2 & 1 & 4 \\
    0 & 1 & 0 & -2 \\
    0 & 0 & 1 & 3
    \end{array}\right]
    }


    ◊right-note{◊mono{infinite number of solutions}}
    There are effectively fewer non-zero rows in the augmented matrix than there are variables, and any rows with all-zero varaible coefficients also have a zero result.
    ◊$${
    \left[\begin{array}{ccc|c}
    1 & 0 & 1 & 2 \\
    0 & 1 & 1 & 0 \\
    0 & 0 & 0 & 0
    \end{array}\right]\
    \text{or}\
    \left[\begin{array}{ccc|c}
    1 & 1 & 3 & 2 \\
    0 & 0 & 1 & 2 \\
    0 & 0 & 0 & 0
    \end{array}\right]
    }


    ◊right-note{◊mono{no solutions}}
    There is a row in the augmented matriz with all-zero variabble coefficients but a nonzero result, corresponding to the equation ◊${0 = a} where ◊${a \ne 0}
    ◊$${
    \left[\begin{array}{ccc|c}
    1 & 4 & 2 & 2 \\
    0 & 1 & -3 & 1 \\
    0 & 0 & 0 & 2
    \end{array}\right]
    }

  }

  The form of the augmented matrix obtained after running Gaussian Elimination is known as its ◊strong{reduced form}.

  ◊(nobar)
  ◊(orange-line)
  ◊left-note{◊red{◊num{2}}}
  ◊red-title{Notes}
  ◊(nobar)
  ◊(nobar)
