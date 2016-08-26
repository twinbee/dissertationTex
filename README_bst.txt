There are different style files for your bibliography. Depending on your
field of study, you can select from among several that are available in
the ./bst directory (search for others online, or write your own).

The default for the dissertation style for

 - math publications use siam.bst, plain.bst, or amsplain.bst;
 - ocean, geophysical modeling use agu.bst
 - computer science use acm.bst or ieeetr.bst;


For the agu.bst you will need to follow these instructions. In your
DISSc.tex file, add the command to the preamble,

  \usepackage{natbib}
  \bibpunct{[}{]}{;}{a}{,}{,}








