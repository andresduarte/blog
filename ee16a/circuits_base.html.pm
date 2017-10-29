#lang pollen

◊;---------- START

◊(nobar)◊(nobar)
◊red-title{Quantities}

◊indented{
  ◊mono{voltage} ◊mono{◊yellow_wash{volts}}
  ◊mono{current} ◊mono{◊yellow_wash{ampere}}
  ◊mono{resistance} ◊mono{◊yellow_wash{ohms}}
}

◊(nobar)
◊red-light{circuit diagram}
  ◊right-note{◊red-light{note} voltage is only defined relative to another point}
  ◊indented{Collection of elements each of which has some voltage ◊em{across} it and some current ◊em{through} it.
  ◊mono{◊yellow_wash{ground}} reference point for measuring voltage}


◊red-title{Elements}

◊(nobar)
◊red-light{wire}
  ◊right-note{counterpart of open circuit}
  ◊indented{Ideal connection with zero voltage across it.}
  ◊$${V = 0 \qquad \qquad I =\ ?}

◊(nobar)
◊red-light{resistor}
  ◊indented{Voltage across resistors is directly proportional to the current that flows through them. ◊mono{◊yellow_wash{ohm's law}}}
  ◊$${V = IR \qquad \qquad I = \frac{V}{R}}

◊(nobar)
◊red-light{open circuit}
  ◊right-note{counterpart of wire}
  ◊$${V =\ ? \qquad \qquad I = 0}

◊(nobar)
◊red-light{voltage source}
  ◊right-note{counterpart of current source}
  ◊indented{Element that forces a specific voltage across it}
  ◊$${V = V_s \qquad \qquad I =\ ?}

◊(nobar)
◊red-light{current source}
  ◊right-note{counterpart of voltage source}
  ◊indented{Element that forces a specific current throught it}
  ◊$${V =\ ? \qquad \qquad I = I_s}

◊(nobar) ◊(nobar)
◊red-title{Rules}

◊strong{Kirchhoff's Current Law}
◊red-light{KCL}
  ◊right-note{◊mono{◊yellow_wash{junction}} place where two or more elements meet}
  ◊indented{
    The current flowing into a junction must be equal to the current flowing out of that junction.
  }

◊strong{Kirchhoff's Voltage Law}
◊red-light{KVL}
  ◊indented{The sum of voltages across elements connected in a loop must be equal to zero.}
  ◊$${\sum_{loop} V_k=0}

◊red-title{Circuit Analysis Algorithm}
  ◊mono{terminals > sides}
  ◊right-note{◊em{circuits are deterministic}}
  ◊indented{To solve a system means to correctly compute all of the voltages and currents}

◊red-light{step 1}
  ◊indented{Pick a junction and label it ground.}

◊red-light{step 2}
  ◊indented{Label all remaining junctions as some ◊${u_i} variable indicating the voltage at that junction relative to ground.}

◊red-light{step 3}
  ◊right-note{◊red-light{note} you can pick the direction the arrows arbitrarily}
  ◊indented{Label the current through every element as some ◊${i_n} variable. The direction of the arrow indicates which direction of the current flow you are considering to be positive.}

◊red-light{step 4}
  ◊indented{Add ◊mono{◊yellow_wash{◊${+}}} and ◊mono{◊yellow_wash{◊${-}}} labels to each element, which indicates the manner in which voltage will be measured.}

◊black-title{Passive Sign Convention}
  ◊indented{If voltage rises when going from ◊${-} to ◊${+}, the voltage measured will be a positive value.}

  ◊indented{
    Positive current should enter through the positive terminal of an element and exit through its negative terminal.
  }

◊red-light{step 5}
  ◊indented{Use KCL at all but one junction, skip the junction labeled as ground.}

◊red-light{step 6}
  ◊indented{Use IV relationships of each of the elements to fill in the remaining equations.}

◊mono{◊yellow_wash{note}}
  ◊indented{if a system has ◊strong{m} elements and ◊strong{n} junctions there will be ◊strong{n-1} voltages and ◊strong{m} currents.
  Because each element has a defining IV relationship, ◊red-light{step 6} will always provide us with ◊strong{m} equations. Similarly KCL will give us ◊strong{n - 1} linearly independent equations.}

◊black-title{Simplification}
  ◊indented{
    Every junction within a set of junctions that are connected to each other only by wires can be labeled with a single voltage variable ◊${u}.
    A set of junctions connected to each other only by wires is defined as a ◊strong{node}.
  }

◊black-title{Trivial Junctions}
  ◊indented{For junctions involving only two elements. By KCL the current flowing into that junction must equal the current flowing out. Given this fact it's only necessary to label the currents of non-wire elements.
  We should then only use KCL on either:}
  ◊bullet-list{
    Non-trivial junctions involving more than two elements.


    Trivial junctions between an element and a wire where the current carried on the wire has already been assumed to equal that of a different element.
  }

◊red-title{Simplified Circuit Analysis Algorithm}

◊red-light{step 1}
  ◊indented{Pick a node an label it as ground.}

◊red-light{step 2}
  ◊indented{Label all remaining nodes as some ◊${u_i} variable representing the voltage at that node relative to the ground node}

◊red-light{step 3}
  ◊indented{label the current through every non-wire element  as some ◊${i_n} variable representing the current through that element}

◊red-light{step 4}
  ◊right-note{◊${+} and ◊${-} indicate the direction of voltage measurement}
  ◊indented{Add ◊mono{◊yellow_wash{◊${+}}} and ◊mono{◊yellow_wash{◊${-}}} labels to each non-wire element by following passive sign convention}

◊red-light{step 5}
  ◊indented{If there are ◊strong{m} non-wire elements in the circuit and ◊strong{n} nodes (including the ground node), use ◊mono{KCL} on ◊strong{◊${n - 1}} junctions}

◊red-light{step 6}
  ◊indented{Use the  ◊mono{◊yellow_wash{IV}} relationships of each of the ◊strong{m} non-wire elements to obtain the remaining equations.}

◊black-title{random}
◊indented{Using a voltmeter to measure the voltage at ◊${R_2} is equivalent to measuring the voltage difference between ◊${u_2} and ground.
One can analyse an electrical model without necessarily understanding how said electrical model was derrived from a physical system.}

◊(nobar)◊(nobar)
◊;----------
◊red-title{Voltage Divider}

  ◊right-note{◊image[#:width "100%" #:border #f "voltage-divider.svg.png"]}
  ◊indented{
    Circuit that produces an output voltage that is a fraction of its input voltage.
  }
  ◊$${
    V_{out} = \frac{R_2}{R_1 + R_2} \times V_{in}
  }


◊(nobar)◊(nobar)
◊;----------
◊red-title{Charge} ◊${\quad} ◊black-title{Q}
  ◊right-note{
    ◊green{Coulomb} ◊${\quad C}
  }
  ◊indented{Basic underlying quantity associated with all electrical systems.}


◊(nobar)◊(nobar)
◊;----------
◊red-title{Current} ◊${\quad} ◊black-title{I}
  ◊right-note{
    ◊green{Ampere} ◊${\quad A}
    ◊$${1C = 1A \times 1sec}
    }
  ◊indented{Net charge flowing through a surface in a unit time.}
  ◊$${I = \frac{dQ}{dt}}


◊(nobar)◊(nobar)
◊;----------
◊red-title{Voltage} ◊${\quad} ◊black-title{V}
  ◊right-note{
    ◊green{Voltage} ◊${\quad V}
    ◊$${
      \begin{align}
        1V = \frac{1J}{1C}
      \end{align}
    }
  }
  ◊indented{
    Amount of energy needed to move a unit charge between two points.
  }
  ◊(nobar)
  ◊indented{
    ◊mono{◊yellow_wash{Relative}}
  }

◊(nobar)◊(nobar)
◊;----------
◊red-title{Resistance} ◊${\quad} ◊black-title{R}
  ◊right-note{
    ◊green{Ohms} ◊${\quad Ω}
    ◊$${1Ω = \frac{1V}{1A}}
  }
  ◊indented{
    Amount of opposition to curent flow.
  }
  ◊mono{conductor} material that allows current to flow through it.
  ◊indented{
    All conductors require some amount of work to be done to get charge to flow through them.
  }

  The resistance of a physical structure is set by:
  ◊bullet-list{
    material properties


    dimensions
  }
  ◊strong{Material properties}
  ◊indented{Every conductive material has a property known as resistivity ◊${\rho}.}

  ◊strong{Dimensions}
  ◊indented{Increasing the dimension of a structure in the same direction as current flows through it increases the ◊em{resistivity} of the structure. Increasing the dimension of the structure in directions perpedicular to the current flow decreases the ◊em{resistivity} of the structure
  For a physical structure made of a material with resistivity ◊${\rho} and having length ◊${L} and cross-sectional area ◊${A}, its resistance is given by:}
  ◊$${R = \rho \times \frac{L}{A}}

How can we guarantee that what we connect to our circuit to measure ◊${V_{out}} does not influence the circuit itself.

◊black-title{Power}
  ◊indented{The most concice and complete way of guaranteeing a measurement tool does not influence a circuit is to state that ◊strong{they do not let any power dissipated through the measurement device.}}
  ◊$${
    P = V \times I \qquad  P = \frac{V^2}{R} \qquad P = I^2 \times R
  }
  When power is possitive energy is being dissipated, when power is negative power is being generated

◊(nobar)
◊red-light{voltmeter}
  ◊indented{Voltage can be non-zero, so current has to be zero to ensure:}
  ◊$${P = IV = 0}

◊(nobar)
◊red-light{ammeter}
  ◊indented{Current can be non-zero, so voltage has to be zero to ensure}
  ◊$${P = IV = 0}


◊black-title{Superposition}
  ◊indented{For a circuit with multiple sources, we can compute the contribution of each source independently ignoring the contribution of all of the other source, and then add all of the independent contributions together to get the final result.}

  For each source ◊${K}
    ◊indented{
      Set all other sources to ◊${0}.
        ◊red-light{◊yellow_wash{IF}}
        ◊red-light{voltage source} replace with wire.
        ◊red-light{current source} replace with open circuit.
      Compute ◊${V_{out}} due to source ◊${K}
    }
  Compute ◊${V_{out}} by summing ◊${V_{out}\ \forall K}

◊(nobar)◊(nobar)
◊black-title{Equivalence}
  ◊indented{Act of connecting functional blocks together influences their consequent behavior.}

◊red-light{Node}
  ◊indented{Point of connection between elements in a circuit that must have the same voltage. Nodes exist for the purpose of analysis.}

◊red-light{Port}
  ◊indented{Oriented pair of nodes that are intended to connect and interact with the outside world.}

Equivalent circuits are used to simplify interactions between circuits.

  ◊indented{In the simplest case, where two circuits are only interacting through one port. The relationship between the current flowing through the connections and the voltage across the nodes would then fully define the interactions between the two circuits.
  This means that if we replace one of our original circuits with another that exhibits the same I V relationship from the standpoint of the port, the circuit we are interacting with wouldn't be able to tell the difference.}

◊mono{◊yellow_wash{This is possible because voltage and current are governed by a linear relationship and a line can be uniquely determined with just two points.}}

Note that from the standpoint of any other port the circuits may or may not be equivalent.

◊red-title{Thevenin Equivalent Circuit}

◊mono{step 1} ◊mono{◊yellow_wash{Find ◊${V_{th}}}}
  ◊indented{Connect an open circuit across the two output terminals and measure the voltage across them.}

◊mono{step 2} ◊mono{◊yellow_wash{Find ◊${R_{th}}}}
  ◊indented{Zero out any independent sources. Then either:}
  ◊bullet-list{
    Apply a test current into terminal and measure the resultant voltage.


    Apply a test voltage and measure the resultant current.
    ◊$${ R_{th} = \frac{V_{test}} {I_{test}} }
  }


◊red-title{Norton Equivalent Circuit}

◊mono{step 1} ◊mono{◊yellow_wash{Find ◊${I_{N}}}}
  ◊indented{Connect a wire the two output terminals and measure the current through it.}

◊mono{step 2} ◊mono{◊yellow_wash{Find ◊${R_{N}}}}
  ◊red-light{note ◊${R_N = R_{th}}}
  ◊indented{Zero out any independent sources. Then either:}
  ◊bullet-list{
    Apply a test current into terminal and measure the resultant voltage.


    Apply a test voltage and measure the resultant current.
    ◊$${ R_{th} = \frac{V_{test}} {I_{test}} }
  }

◊red-light{Note}
◊$${I_N = \frac{V_{th}}{R_{th}}}
◊indented{Thus, we can find both equivalent circuits by solving for just one.}

◊black-title{Series Resistors}
  ◊indented{The equivalent resistance of two resistors with the same current through them is simply their sum.}


◊black-title{Parallel Resistors}
  ◊indented{The equivalent resistance of two resistors with the same voltage through them is:}
  ◊$${R_{th} = \frac{R1 \times R2}{R1 + R2}}
