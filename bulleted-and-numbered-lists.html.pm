#lang pollen

◊(define-meta title "bulleted and numbered lists")
◊hanging-topic[(topic-from-metas metas)]{Don't type them manually}

Are you still making ◊em{bulleted and numbered lists} by manually typing bullets or numbers at the beginning of each line?

In the 21st century, no one should be doing this task by hand. Manually formatted lists are a waste of time and prone to error. I can get you started, but if you’re unfamiliar with automated lists, spend some time with your word processor’s manual or help file.

◊(omission)

◊btw{
As I suggested in ◊xref{mixing fonts}, it’s acceptable to set a list index (i.e., a bullet or a number) in a different font than the list item itself. You can also make the list index a smaller point size.


Asterisks are sometimes used as bullets, but they’re not qualified for the job—they’re too small and too high.
}

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

◊bullet-list{
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.


Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
}

◊numbered-list{
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.


Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
}
