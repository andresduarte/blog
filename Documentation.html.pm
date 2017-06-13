#lang pollen




◊(define-meta title "Documentation")
◊hanging-topic[(topic-from-metas metas)]{06.07.17}


◊em{Italics}

◊highlight['racket]{
∆em{text}
}

◊(exclusion) ◊;----------

◊u{Underline}

◊highlight['racket]{
∆u{text}
}

◊(exclusion) ◊;----------

◊strong{Bold}

◊highlight['racket]{
∆strong{text}
}

◊(exclusion) ◊;----------

◊chapter{Chapter}

◊highlight['racket]{
∆chapter{text}
}

◊(exclusion) ◊;----------

◊section{Section}

◊highlight['racket]{
∆section{text}
}

◊(exclusion) ◊;----------

◊topic{Topic}

◊highlight['racket]{
∆topic{text}
}

◊(exclusion) ◊;----------

◊hanging-topic{Hanging Topic}

◊highlight['racket]{
∆hanging-topic{text}
}

◊(exclusion) ◊;----------

◊bullet-list{

  First item.


  Second item.


  Third item.}

◊highlight['racket]{
∆bullet-list{

  First item.


  Second item.


  Third item.}
}

◊(exclusion) ◊;----------

◊numbered-list{

  First item.


  Second item.


  Third item.}

◊highlight['racket]{
∆numbered-list{

  First item.


  Second item.


  Third item.}
}

◊(exclusion) ◊;----------

◊(omission)

◊highlight['racket]{
∆(omission)
}

◊(exclusion) ◊;----------

◊quick-table{
  Sun | Mon | Tue | Wed | Thu | Fri | Sat
   | | | | | 01 | 02 | 03
  04 | 05 | 06 | 07 | 08 | 09 | 10
  11 | 12 | 13 | 14 | 15 | 16 | 17
  18 | 19 | 20 | 21 | 22 | 23 | 24
  25 | 26 | 27 | 28 | 29 | 30 | |
}

◊highlight['racket]{
  ∆quick-table{
    Sun | Mon | Tue | Wed | Thu | Fri | Sat
     | | | | | 01 | 02 | 03
    04 | 05 | 06 | 07 | 08 | 09 | 10
    11 | 12 | 13 | 14 | 15 | 16 | 17
    18 | 19 | 20 | 21 | 22 | 23 | 24
    25 | 26 | 27 | 28 | 29 | 30 | |
  }
}

◊(exclusion) ◊;----------

◊indented{Indented}

◊highlight['racket]{
∆indented{Indented}
}

◊(exclusion) ◊;----------

◊margin-note{This is a margin-note}

◊highlight['racket]{
∆margin-note{This is a margin-note}
}

◊(exclusion) ◊;----------

◊image[#:width "20%" "harvey.jpeg"]

◊highlight['racket]{
∆image[#:width "20%" "harvey.jpeg"]
}

◊(exclusion) ◊;----------

◊sig{This is a signature}

◊highlight['racket]{
∆sig{This is a signature}
}

◊(exclusion) ◊;----------

◊xref{introduction}

◊highlight['racket]{
∆xref{introduction}
}

◊(exclusion) ◊;----------

◊link["http://www.google.com"]{Google}

◊highlight['racket]{
∆link["http://www.google.com"]{Google}
}

◊(exclusion) ◊;----------

◊(midbar)

◊highlight['racket]{
∆(midbar)
}

◊(exclusion) ◊;----------

◊captioned["caption"]{This is a sentence}

◊highlight['racket]{
∆captioned["caption"]{This is a sentence}
}

◊(exclusion) ◊;----------

◊before-and-after-pdfs["order"]

◊highlight['racket]{
∆before-and-after-pdfs["order"]
}

◊(exclusion) ◊;----------

◊single-pdf["cows"]

◊highlight['racket]{
∆single-pdf["cows"]
}

◊(exclusion) ◊;----------

◊alternate-after-pdf["cows"]

◊highlight['racket]{
∆alternate-after-pdf["cows"]
}

◊(exclusion) ◊;----------
