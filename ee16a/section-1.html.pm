#lang pollen

◊red-title{Information Devices and Systems}
◊small-num{08.24.17}

◊(nobar)

◊;---------- START

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

  Circuits shape the way we interact with electronic devices. Anyone hoping to create a truly ◊em{new} system needs an understanding of how an actual systems are designed at both the hardware and software level.

  Building any type of complex system requires breaking it into a set of simpler sub-systems, which might consists of even more sub-systems.

  ◊right-note{◊blue{resistors, capacitors, current sources}}
  Electrical circuits typically consists of sub-circuits built from simple primitive building blocks◊blue{*} that place constraints on each other.


◊red-title{Effort and Flow}

  The ◊strong{effort} variable applies a force and the ◊strong{flow} variable moves in response

  ◊right-note{in electrical circuit analysis}
  The ◊em{effort} variable is ◊strong{voltage}, the ◊em{flow} variable is ◊strong{current}

  Circuit concepts are relevant to understanding network analysis and signal flows in systems


◊red-title{Linear Algebra}

  ◊bullet-list{
    The study of vectors and their transformations


    Linearity is a good first-order approximation to the complicated real world
  }


◊red-title{Tomography}

  ◊right-note{◊blue{x-rays}}
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

  ◊${\vec{x}} is a vector, because it contains ◊${n} real numbers we write as ◊${\vec{x} \in \mathbb{R^n.}}
  Each ◊${x_i} is called a ◊strong{component} or ◊strong{element} of the vector. The ◊strong{size} of a vector is the number of components it contains

◊red-title{Matrix}

  Rectangular array of numbers.

  ◊$${
    \left [\begin{matrix} A_{11} & \dots & A_{1n} \\ \vdots & \ddots & \vdots \\ A_{m1} & \dots & A_{mn} \end{matrix}\right]
  }

  Each ◊${A_{ij}} (where ◊${i} is the row index and ◊${j} is the column index) is a ◊strong{component} or ◊strong{element} of the matrix.
