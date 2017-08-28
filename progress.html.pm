#lang pollen

◊red-title{progress}
◊small-num{07.23.17}

◊(nobar)

◊;---------- START

◊right-note{
  Implemented using ◊strong{default-tag-function}.
  ◊small-num{◊green{07.17}}
}

◊left-note{◊green{●}}
green

◊left-note{◊green{●}}
red

◊left-note{◊green{●}}
blue

◊(orange-line)

◊right-note{
  Implemented using existing ◊strong{margin-note}.
  ◊small-num{◊green{07.17}}
}

◊left-note{◊green{●}}
left-note

◊left-note{◊green{●}}
right-note

◊(orange-line)

◊right-note{Had already been implemented}
◊left-note{◊green{●}}
Indented

◊(nobar)
◊(orange-line)

◊right-note{
  Same image tag just add:
  ◊highlight['racket]{#:border #f}
 }
◊left-note{◊green{●}}
image with no border.


◊(nobar)◊(nobar)◊(nobar)◊(nobar)
◊(orange-line)

◊left-note{◊red{●}}
◊right-note{No progress.}
Image tag that allows me to display multiple images on the same line without unexpected ehavior.

◊(orange-line)


◊bullet-list{
  ◊right-note{8.12.17}
  Fixed highlight text spilling over.


  ◊right-note{8.12.17}
  Discovered that by default the image class includes a ◊strong{bordered} class but it can be removed.

  ◊right-note{Bordered}
  ◊highlight['racket]{
      ∆image[#:width "80%" "line.png"]
  }

  ◊right-note{Borderless}
  ◊highlight['racket]{
      ∆image[#:width "80%" "line.png" #:border #f]
  }


}
