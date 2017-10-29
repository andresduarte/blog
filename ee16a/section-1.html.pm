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
  If we create a ◊${2 \times 2} matrix for the scaling factors, one vector for the variables and another vector for the results of the equation, we can represent the system of equations as

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
◊right-note{◊blue{◊num{09.10.17}}}
◊red-title{Notes}
◊(nobar)
◊(nobar)


  ◊right-note{◊blue{◊${\vec{x} = \vec{y}}}}
  Two vectors ◊${\vec{x}} and ◊${\vec{y}} are said to be equal◊blue{*}, if they have the same size and ◊${x_i = y_i} for all ◊${i}

  ◊${\vec{x} \in \mathbb{R^3}} means that ◊${\vec{x}} contains three real numbers.

  Anything that can be represented as an ordered list of numbers can be expressed as a vector.

  ◊${\vec{x} \in \mathbb{R^n}} can represent samples of a quantity at ◊${n} time points. The position of an object at time ◊${t_1,t_2, \dots, t_n} cna be represented with a vector
  ◊$${
    \vec{x} = \left [\begin{matrix} t_1 \\ t_2 \\ \vdots \\ t_n \end{matrix}\right]
  }
  Where ◊${x_{ti}} represents the position fo the object at time ◊${t_i}}

  ◊strong{State}
  The minimum information you need to completely characterize a system at a given point in time, without any need for more information about the past of the system.

  ◊${state} is a powerful concept that lets us separate the past from the future. The past can only affect the future through the present, so by knowing the present we have everything we need to predict the future.

  ◊strong{Functions}
  We can use vectors to represent any function with a numerical output -- even functions that operate on an input domain of infinite size.

  ◊strong{color}
  To represent a color, with components red ◊red{●}, green ◊green{●}, and blue ◊blue{●}, we use the vector

  ◊$${
    \vec{x} = \left [\begin{matrix} x_1 \\ x_2 \\ x_3 \end{matrix}\right],\ \vec{x} \in \mathbb{R^3}
  }

  ◊strong{Image}
    A grayscale image of ◊${m \times n} pixels is effectively a matrix with ◊${m} rows and ◊${n} columns, with entries corresponding to the grayscale levels at the pixel location. This matrix ◊${\mathbb{R^{m \times n}}} could be represented by a vector of length ◊${mn}, by placing all pixel readings in a single list.

    ◊$${
      \left [\begin{matrix}
        x_{11} & x_{12} & \dots & x_{1n} \\
        x_{21} & x_{22} & \dots & x_{2n} \\
        \vdots & \vdots & \ddots & \vdots \\
        x_{m1} & x_{m2} & \dots & x_{mn}
      \end{matrix}\right]
      =
      \vec{x} =
      \left[ \begin{matrix}
        x_{11} \\
      \vdots \\
        x_{1n} \\
        x_{21} \\
        \vdots \\
        x_{2n} \\
        \vdots \\
        x_{m1} \\
        \vdots \\
        x_{mn}
      \end{matrix}\right]
    }

  ◊strong{Zero Vector}

    Vector with all the components equal to zero, usually represented as ◊${\vec{0}}

  ◊strong{Standard Unit Vector}
    Vector with all components equal to ◊${0} except for one element, which is equal to 1. A standard unit vector where the ◊${ith} position is equal to ◊${1} is written as ◊${\vec{e_i}}.
    ◊$${
      \vec{e_1}
      =
      \left [\begin{matrix}
        1 \\
        0 \\
        0
      \end{matrix}\right]
      , \vec{e_2} =
      \left [\begin{matrix}
        0 \\
        1 \\
        0
      \end{matrix}\right]
      , \vec{e_3} =
      \left [\begin{matrix}
        0 \\
        0 \\
        1
      \end{matrix}\right]
    }
    When talking about standard unit vectors in the context of states, we might also use the word ◊em{pure} to refer to such states. This is because they only have one kidn of component in them.

    ◊left-note{◊orange{●}}
    ◊strong{Vector Operations}

    ◊strong{Addition}

    Two vectors of the same size and in the same space◊blue{*} can be added together by adding their corresponding components.
    ◊$${
      \left [\begin{matrix}
        -1 \\
        3.5 \\
        0
      \end{matrix}\right]
      +
      \left [\begin{matrix}
        2 \\
        -1 \\
        3
      \end{matrix}\right]
      =
      \left [\begin{matrix}
        -1 + 2 \\
        3.5 -1 \\
        0 + 3
      \end{matrix}\right]
      =
      \left [\begin{matrix}
        1 \\
        2.5 \\
        3
      \end{matrix}\right]
    }

    To perfom vector addition graphically, you place the tail of the first vector at the orgin, and the place the tail of the second vector at the head of the first vector. The vector from the origin to the head of the second vector is the resulting vector sum.

    ◊strong{Properties} ◊${\quad} ◊mono{vector addition}
    For three vectors ◊${\vec{x}, \vec{y}, \vec{z} \in \mathbb{R^n}} the following properties hold.
    ◊bullet-list{
      ◊right-note{◊mono{commutativity}}
      ◊${\vec{x} + \vec{y} = \vec{y} + \vec{x}}


      ◊right-note{◊mono{associativity}}
      ◊${\vec{x} + (\vec{y} + \vec{z}) = (\vec{x} + \vec{y}) + \vec{z}}


      ◊right-note{◊mono{additive identity}}
      ◊${\vec{x} + \vec{0} = \vec{x}}


      ◊right-note{◊mono{additive inverse}}
      ◊${\vec{x} + (-\vec{x}) = \vec{0}}
    }

    ◊strong{Scalar Multiplication}

    We can multiply a vector by a ◊em{scalar}, that is in the same spcae as the vector.

    To perform scalar multiplication simply multiply each of the components of the vector by the scalar.

    ◊$${
      \alpha \times
      \left [\begin{matrix}
        x_1 \\
        x_2 \\
        \vdots \\
        x_n
      \end{matrix}\right]
      =
      \left [\begin{matrix}
        \alpha x_1 \\
        \alpha x_2 \\
        \vdots \\
        \alpha x_n
      \end{matrix}\right]
    }

    ◊strong{Negative Vector}
    To obtain a negative vector ◊${-\vec{x}} we simply multiply ◊${\vec{x}} by the scalar ◊${-1}

    ◊strong{Zero Vector}
    We can obbtain the zero vector bby multiplying any vector by ◊${0: 0\vec{x} = \vec{0}}

    ◊strong{Properties} ◊${\quad} ◊mono{scalar-vector multiplication}
    ◊bullet-list{
      ◊right-note{◊mono{associativity}}
      ◊${(\alpha \beta)\vec{x} = \alpha (\beta\vec{x})}


      ◊right-note{◊mono{distributivity}}
      ◊${(\alpha + \beta)\vec{x}  =  \alpha \vec{x} + \beta \vec{x}}


      ◊right-note{◊mono{multiplicative identity}}
      ◊${1\vec{x} = \vec{x}}
    }

    ◊strong{Vector-Vector Multiplication}

    By convention, a row vector can only be multiplied by a column vector (and vice versa). Moreover, vector-vector multiplication is not commutative, so ◊${\vec{y}^T \vec{x} \ne \vec{x} \vec{y}^T}. In fact ◊${\vec{y}^T \vec{x}} is only defined when both vectors have the same number of elements, ◊${\vec{x} \vec{y}^T} is defined for vectors of any size.

    Multiplying a column vector by a row vector on the left is one way of computing the ◊strong{dot product} of two vectors.
    ◊$${
      \vec{y}^T \vec{x} =
      \left [\begin{matrix}
      y_1 &  y_2 & \dots & y_m
      \end{matrix}\right]
      \times
      \left [\begin{matrix}
      x_1 \\
      x_2 \\
      \dots \\
      x_n
      \end{matrix}\right]
      = y_1 x_1 + y_2 x_2 + \dots y_n x_n
    }

    Fundamentally ◊${\vec{y}^T \vec{x}} is a sum of products - each element in ◊${\vec{y}} is multiplied by the corresponding element in ◊${\vec{x}}, and all of these products are added together. Bboth vectors must contain ◊${n} elements for their product to be defined.

    Multiplying a row vector by a clomun vector on the left, on the other hand, generates a metrix.

    ◊$${
      \vec{y}^T \vec{x} =
      \left [\begin{matrix}
      x_1 \\
      x_2 \\
      \dots \\
      x_n
      \end{matrix}\right]
      \times
      \left [\begin{matrix}
      y_1 &  y_2 & \dots & y_m
      \end{matrix}\right]
      =
      \left [\begin{matrix}
      x_1y_1 &  x_1y_2 & \dots & x_1 y_m \\
      x_2y_1 &  x_2y_2 & \dots & x_2 y_m \\
      \vdots & \vdots & \vdots & \vdots \\
      x_ny_1 &  x_ny_2 & \dots & x_n y_m
      \end{matrix}\right]
    }

    ◊strong{Matrices}

    Matrices are ordered lists of vectors. Alternatively, matrices are rectangular arrays of numbers. Elements in matrices are ordered in two dimensions. by convention, a matrix is said to bbe in ◊${\mathbb{R^{m \times n}}} if it has ◊${m} rows and ◊${n} columns.

    Matrices are often represented by capital letters. Subscripts are usually used to specify an element of a matrix, with the first subscript corresponding the row index and the second corresponding to the column index.

    A matrix is said to be square if ◊${m = n}. Just like with vectors we can compute the ◊$strong{transpose} of a bector by making rows into the columns of a new matrix.

    ◊$${
      \left [\begin{matrix} A_{11} & \dots & A_{1m} \\ \vdots & \ddots & \vdots \\ A_{n1} & \dots & A_{nm} \end{matrix}\right]
    }

    A square matrix is said to be ◊em{symmetric} if ◊${A = A^T}, which means that ◊${A_{ij} = A_{ji} for all i and j}

    ◊strong{Zero Matrix}
      Similar to a zero vector, a zero matrix is a matrix with all components equal to zero. It's usually represented as a 0, where its size is implied from context.

    ◊strong{Identinty Matrix}
      ◊right-note{
        Note that the column vectors of an ◊${n \times n} identity matrix are the unit vectors in ◊${\mathbb{R^n}}
      }
      An identity matrix, written as ◊${I}, is a quare matrix whose diagonal elements are ◊${1} and whose off-diagonal elements are all ◊${0}.

      Multiplying a square matrix by an indentity matrix of the same size will yiled the same initial matrix ◊${AI = IA = A}

      ◊strong{Column vs Row Perspective}

      For a given row, the coefficient entries represent how much the corresponding state variale affects the outcome of the experiment. In contrast the column represents the influence of a particular state variable on the collection of experiments take together.

      ◊strong{Matrix Addition}

      Two matrices of the same size cna be added together by adding their corresponding components. If they are not the same size, you cannot add them.

      ◊strong{Properties} ◊${\quad} ◊mono{matrix addition}

      ◊bullet-list{
        ◊right-note{◊mono{commutativity}}
        ◊${A + B = B + A}


        ◊right-note{◊mono{associativity}}
        ◊${(A + B) + C = A + (B + C)}


        ◊right-note{◊mono{additive identinty}}
        ◊${ A + 0 = A}


        ◊right-note{◊mono{additive inverse}}
        ◊${A + (-A) = 0}
      }

      ◊strong{Scalar-Matrix Multiplication}

        As with scalar-vector multiplication, multiplying a matrix by a scalar requires multiplying each component of the matrix by that scalar.

      ◊strong{Negative Matrix}

        To obtain a negative matrix ◊${-A}, we can just multiply the original matrix ◊${A} by the scalar ◊${-1}.

      ◊strong{Zero Matrix}

        ◊right-note{
          ◊${0 \times A = 0}
        }
        We can obtain the zero matrix by multiplying any matrix by ◊${0}.


      ◊strong{Properties} ◊${\quad} ◊mono{scalar-matrix multiplication}

      ◊bullet-list{
        ◊right-note{◊mono{associativity}}
        ◊${(\alpha \beta) \times A = (\alpha) \times (\beta A)}


        ◊right-note{◊mono{Distributivity}}
        ◊${(\alpha + \beta) \times A =  \alpha A + \beta A \quad  \text{and} \quad \alpha(A + B) = \alpha A + \alpha B}


        ◊right-note{◊mono{Multiplicative Identity}}
        ◊${1 \times A = A}
      }


      ◊strong{Matrix Vector Multiplication}

      A matrix ◊${A \in \mathbb{R^{m \times n}}} and a vector ◊${\vec{x} \in \mathbb{R^n}} can be multiplied together to create a new vector of length m.

      ◊$${
        A\vec{x} =
        \left [\begin{matrix}
        A_{11} & A_{12} & \dots & A_{1n} \\
        A_{21} & A_{22} & \dots & A_{2n}  \\
        \vdots & \vdots & \vdots & \vdots \\
        A_{m1} & A_{m2} & \dots & A_{mn}
        \end{matrix}\right]
        \left [\begin{matrix}
        x_{1} \\
        x_{2} \\
        \vdots \\
        x_{n}
        \end{matrix}\right]
        =
        \left [\begin{matrix}
        A_{11}x_1 & A_{12}x_2 & \dots & A_{1n}x_n \\
        A_{21}x_1 & A_{22}x_2 & \dots & A_{2n}x_n  \\
        \vdots & \vdots & \vdots & \vdots \\
        A_{m1}x_1 & A_{m2}x_2 & \dots & A_{mn}x_n
        \end{matrix}\right]
      }
      Each entry of the resulting vector is the inner product of the corresponding row of ◊${A} with ◊${\vec{x}}

      Multiplying the standard unit vector by a matrix effectively selects a single column of the matrix. Matrix vector multiplication is a way to compute a weighted sum of the columns in the matrix, where the weights are given by the vector that is being multiplied.

      We model the system of linear eqautions resulting from a set of measurements as ◊${A\vec{x} = \vec{b}}. The columns of our matrix, ◊${A}, represent the influence of each variable on the results of the experiment. The final measurements ◊${\vec{b}}, give a weighted combination of the influence of each variable, with weights given by the actual values that each variable has taken for a particular measurement.

      ◊strong{Matrix-Matrix Multiplication}


      Computationally, matrix-matrix multiplication involves taking the inner product of each row vector in ◊${A} with each column vector in ◊${B} starting from the top row of matrix ◊${A} and leftmost column of matrix ◊${B}. Effectively the left matrix is multiplied by each column vector in the second matrix to produce a new column of ◊${AB}

      ◊$${
        \left [\begin{matrix}
        a_{11} & a_{12} \\
        a_{21} & a_{22}
        \end{matrix}\right]
        \left [\begin{matrix}
        b_{11} & b_{12} \\
        b_{21} & b_{22}
        \end{matrix}\right]
        =
        \left [\begin{matrix}
        a_{11}b_{11} + a_{12}b_{21} & a_{11}b_{12} + a_{12}b_{22} \\
        a_{21}b_{11} + a_{22}b_{21} & a_{21}b_{12} + a_{22}b_{22}
        \end{matrix}\right]
      }

      To left-multiply a matrix ◊${B} by another matrix ◊${A}, the numer of columns in ◊${A} must equal the number of rows in ◊${B}. Otherwise the product ◊${A \times B} cannot be calculated. Moreover, if ◊${A} is a ◊${m \times n} matrix and ◊${B} is ◊${n \times p} the product ◊${A \times B} will have dimensions ◊${m \times p}.

      In order for the inner product ◊${\vec{r_i}^T \vec{c_j}} to be defined, each row vector ◊${\vec{r_i}^T} must have the same number of entries as each column vector ◊${\vec{c_j}}. As a result, matrix-matrix multiplication is not commutative. ◊${A \times B} does not necessarily equal ◊${B \times A}. In fact, both quantities can only be calculated if the number of rows in ◊${A} equals the number of columns in ◊${B} ◊em{and} the number of rows in ◊${B} equals the number of columns in ◊${A}.


◊(nobar)
◊(orange-line)
◊left-note{◊red{◊num{3}}}
◊right-note{◊blue{◊num{09.10.17}}}
◊red-title{Note}
◊(nobar)
◊(nobar)

  ◊strong{Linear Dependence}

    Concept often used to characterize the ◊em{redundancy} of information in real world applications.

    ◊strong{Definition 1} A set of vectors ◊${\{\vec{v_1}, \dots, \vec{v_n}\}}} is linearly dependent if there exist scalars ◊${\alpha_1, \dots, \alpha_n} such that ◊${\alpha_1 \vec{v_1} + \dots + \alpha_n \vec{v_n} = \vec{0}} and not all ◊${\alpha_i}'s are equal to zero.

    ◊strong{Definition 2} A set of vectors ◊${\{\vec{v_1}, \dots, \vec{v_n}\}}} is linearly dependent if there exist scalars ◊${\alpha_1, \dots, \alpha_n} and an index ◊${i} such that ◊${\vec{v_i} = \sum_{j \ne i} \alpha_j \vec{v_j}}. In words, a set of vectors is linearly dependent if one of the vectors could be written as a linear combination of the rest of the vectors.

  ◊strong{Linear Independence}

    A set of vectors is linearly independent if it is not linearly dependent. more specifically a set of vectors ◊${\{\vec{v_1}, \dots, \vec{v_n}\}} is linearly independent if ◊${\alpha_1 \vec{v_1} + \dots + \alpha_n \vec{v_n} = \vec{0}\ \text{implies}\ \alpha_1 = \dots = \alpha_n = 0}

  ◊strong{Linear Dependence and Systems of Linear Equations}

  Recall that a system of linear equations can be written in matrix-vector form as ◊${A\vec{x} = \vec{b}} where ◊${A} is a matrix of variable coefficients, ◊${\vec{x}} is a vector of variables, and ◊${b} is a vector of values that these weighted sums must equal. Given this, there is a way to tell if a system of linear equations is going to have zero solutions, a unique solution, or infinitely many solutions, without running Gaussian Elimination.

  ◊bullet-list{
    A system ◊${A\vec{x} = \vec{b}} has infinite number of solutions if and only if ◊${A} has linearly dependent columns.
  }
  Each column in matrix ◊${A} represents the influence of a variable on the collection of measurements. The fact that we cannot pin down the values of the variables is the same as saying that the influence of each varaile to the set of measurements cannot be disambiguated.

  Often times, we can't directly measure the values of the variables we're interested in. However, we can measure the total weighted contribution of each variable. The hope is that we can fully recover each variable by taking several of such measurements.

  Each row of ◊${A} in the system of linear equations ◊${A\vec{x} = \vec{b}} corresponds to an equation in said system.

  ◊bullet-list{
    If the system of linear equations ◊${A\vec{x} = \vec{b}} has an infinite number of solutions and the number of rows in ◊${A} is greater than or equal to the number of columns, then the rows of ◊${A} are linearly dependent.


    If we run Gaussian Elimination we'll end up with at least one row of zeros, which means that at least one of the rows can be written as a linear combination of the rest. Thus, the rows of ◊${A} must be linearly dependent.


    If the number of measurements taken is at least the number of variables and we still cannot completely determine the variables, then at least one of our measurements must be redundant
  }

  ◊strong{Summary}

    Looking from the perspective of columns, linear dependency gives us a way to characterize ambiguity in the influence of each variable to our collection of measurements; looking from the perspective of rows, linear dependency gives us a way to characterize redundancy in the measurements.

◊(nobar)
◊(orange-line)
◊left-note{◊red{◊num{4}}}
◊right-note{◊blue{◊num{09.10.17}}}
◊red-title{Note}
◊(nobar)
◊(nobar)

  A proof is a finite sequence of logical deductions, which establishes the trurth of a desired statement. In particular, the power of a proof lies in that using finite means, we can guarantee the truth of a statement with infinitely many cases.

  Mo specifically, a proof has the following structure.

  ◊bullet-list{
    Recall that there are certain statements called axioms, that we accept without proof.


    Sequence of logical deductions where each successive statement is necessarily true if the previous statement were true.


    These rules of logic that allow us to gurantee that each statement follows from the previous one are a formal distillation of laws that  are thought to underlie human thinking.
  }

  When encountering a proof probblem we try to understand it by asking.

  ◊bullet-list{
    What things can I assume based on the problem statement?


    What is it that we would like to show?
  }
  The answer to the first question gives us the conditions we are working under and the answer to the second question gives us a clear picture of our goal. Then we ask.

  ◊bullet-list{
    How can we utilize what we know to get to what we would like to show under the specified condition?
  }
  ◊mono{
    rewrite what we know
    introduce new concepts
    work backwards
  }

◊(nobar)
◊(orange-line)
◊left-note{◊red{◊num{5}}}
◊right-note{◊blue{◊num{09.10.17}}}
◊red-title{Note}
◊(nobar)
◊(nobar)

  By applying a matrix you are performing a transformation.

  A matrix multiplied by another matrix is equivalent to another matrix.

◊(nobar)
◊(orange-line)
◊left-note{◊red{◊num{6}}}
◊right-note{◊blue{◊num{09.10.17}}}
◊red-title{Note}
◊(nobar)
◊(nobar)

  ◊strong{Dimensionality}

  Vectors in ◊${\mathbb{R^5}} are longer than vectors in ◊${\mathbb{R^2}}.

  We need two parameters to uniquely describe any vector in ◊${\mathbb{R^2}}, and five parameters to uniquely describe any vector in ◊${\mathbb{R^5}}. In this sense we can look at the ◊strong{dimension} of a space as the fewest amount of parameters needed to describe an element of that space. Dimensionality can also be thought of as the ◊em{degrees of freedom} of a space, that is the number of parameters that can be altered when describing a member of that space.

  ◊strong{Range & Span}

  We say that the ◊strong{range} of an operator is the space of all outputs that the operator can map to.

  The range of the operator ◊${A} is the space of all possible combinations of its columns, another name for this is the ◊strong{span} of the columns of A

  Any vector in ◊${span(A)} can always be represented as a linear combination of the linearly ◊em{independent} columns of ◊${A}.

  The dimensions of ◊${span(A)} is equal to the number of linearly independent columns of ◊${A}, which will be less than or equal to ◊${min(m,n)}

  The rank of a matrix is the dimension of the span of its columns.

  ◊strong{Inverse}

  A square matrix ◊${A} is said to be invertibble if there exists a matrix ◊${B} such that
  ◊$${
    AB = BA = I
  }
  Where ◊${I} is the identity matrix. Then we call matrix ◊${B} the inverse of matrix ◊${A}, which we denote as ◊${A^{-1}}

  if ◊${A} is an invertible matrix, then its inverse must be unique.
