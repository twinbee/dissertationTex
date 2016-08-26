%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%DOCUMENT:      DISSc
%AUTHOR:        J. Kolibal
%REV:           26
%DATE:          Mon Nov 21 09:40:52 CST 2005

                                                                                

%DEPENDENCIES:  
% 
%PURPOSE:       To demonstrate the generation of a dissertation for
%                for Computation Science and Mathematics at USM.
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Please check REVISIONS at the end of the README to obtain a list of current
revisions and changes to the package.

Please note that if you are using latex to produce your dissertation, please
advise the graduate reader that you will be using latex. The rules for
latex produced dissertations are different than for other dissertations,
e.g., you may

 - right and left justify your test;
 - not indent after Chapter and Section headers (standard book typesetting);
 - use arabic numbers for Chapter headings instead of Roman numerals (otherwise
   it becomes impossible to number equations).

You should strive to make your disseration appear similar to the template.
Please review carefully all of the rules necessary to produce output which
is consistent with these requirements.

Please use the ./dbsetup tool to set up your preamble. Enter the
information in the file, then run ./dbsetup to generate the
pages for the preamble to the dissertation. You will need to enter
the contents of the abstract manually in the file ./preamble/DISS_abstract.tex
and in the ./preamble/DISS_dedication.tex file, if you desire a dedication.

The printer offsets have been setup up for a Dell 1700 laser. You may
have to adjust the margins to achieve a printed page that is positioned
correctly on the page.



INSTRUCTIONS FOR PROCESSING THE FILES:

To process all of the files entirely, type

                        make

in any xterm in this directory.

Options for the make command are:

all   - Same as, make without any arguments. Makes all dvi, dps, index,
         lof and toc files using three passes to build and rebuild database
         files for consistency.

next  - Updates latex, makeindex, bibtex, and dvips.

bbl   - Updates the bibliography database, creating bbl file from bib file.

index - Updates the index entries.

glos  - Creates a glossary.

dvi   - Creates the dvi file. Can be process to postscript.

ps    - Creates the postscript output file DISSc.dps.

pspdf - Creates the pdf output file DISSc.pdf by converting the postscript
        file DISSc.dps to DISSc.pdf. Note that this conversion is done
        using the -Ppdf -G0 option for dvips and thus Type 1 fonts
        are automatically pulled in. The  tex generated fonts are then
        corrupted.

npspdf - Creates the pdf output file DISSc.pdf by converting the postscript
        file DISSc.dps to DISSc.pdf. Note that this conversion is done
        without using the -Ppdf -G0 option for dvips and thus Type 1 fonts
        are not automatically pulled in. This is because the tex generated
        fonts are then not corrupted. If you use this option, use a font
        set such as mathptm which will by T1 by default.

pdf   - Creates the pdf output file DISSc.pdf using pdflatex directly. This is
        the best way to produce a pdf output file, however you cannot use
        postscript input files. You must convert the files to pdf, tiff or jpg
        format.

clean - deletes all temporary files.




To use this document, please set your browser to open

           files:~/DIRECTORYindex.html

where DIRECTORY is the directory where you have placed the
contents of the DISSc package on your system.



TO CUSTOMIZE THE SETUP OF THE PREAMBLE FILES READ ./preamble/README



INSTRUCTIONS FOR USE ON ANY LINUX COMPUTER:

If you are on a linux system and netscape is running on your
system (you must have started it) you can use the command

           ./bin/Ewww index.html

in the diss_html directory to open a copy of netscape to view
the documentation.

If you are on a workstation with X, there is a front end for executing
latex which is convenient. To use, type ./bin/disstool and click the
buttons. If you are running on any of the workstations used by
Scientific Computing, Math, or Computer Science with Ebin files, it
is preferable to use Etextool DISSc, where DISSc is the command file
to be processed.


INSTRUCTIONS FOR USE ON ANY LINUX COMPUTER IN THE SC NETWORK:

You may use the Ebin command 

             Ewww index.html

to open up the help file (you should set your path to include a path
to /usr/local/Ebin).

To process the files, use the command

              Etextool DISSc

instead of the disstool command. These are similar, however the Etextool
command is more frequently changed to reflect system changes and enhancements.


  .....................................................................




REVISIONS:

REVISION 25
Mon Nov 21 09:40:52 CST 2005
Fixed spacing on preamble pages and corrected to graduate office.

REVISION 25
Tue Jun 22 10:02:14 CDT 2004
Added glosspage label to allow for the glossary entry in the table of
contents to be generated automatically.

REVISION 24
%DATE:          Thu Jun 17 11:33:12 CDT 2004
Added ABSTRACT to Table of Contents, and modified error with patch
if the listoffigures and listoftables is more than one page.

REVISION 23
Wed May  5 16:26:39 CDT 2004
Changed spacing of DISS_title.tex page. 

REVISION 22
Tue Apr  6 11:30:45 CDT 2004
Corrected Table of Contents and List of Figures spacing in dissertation_usm.cls
file, and new layout requirements for preamble pages.

REVISION 21
Sun Nov 30 17:06:09 CST 2003
Corrected error in naming of mag.sty file.


REVISION 20
Mon Nov 24 09:46:30 CST 2003

Added support for scaling of document using magnif.sty file.
Added support for glossary and nomenclature generation. This is a complicated
attribute. To turn this off, find all occurences of the commands
between the the listings,

% SELECT GLOSSARY ---
% SELECT GLOSSARY ---

and comment these out. You will also need to comment out the occurence
of the

\nomenclature

command throughout the ./chapter files.

The command 

  makeindex DISSc.glo -s nomencl.ist -o DISSc.gls

processes the glossary. You can invoke this with the make command, or as
part of ./bin/Emakeglossary.




REVISION 19
DATE: Sun Nov 23 20:03:58 CST 2003

Changed preamble to allow for wider spacing on signature sheet.

Modified dissertation_usm.cls to set table and figure captions
in \textit text.


REVISION 18
%DATE:     Mon Jul  1 08:09:14 CDT 2002
Added testpage.tex to ./lib directory. You can run testpage using

   latex testpage
   dvips testpage

then print testpage on the printer you are using. You can use this
to correct the page margins. These are set with the command:

\setlength{\textheight}{9.3in}
\setlength{\textwidth}{5.9in}
\setlength{\oddsidemargin}{0.5in}
\setlength{\evensidemargin}{0.5in}

and after the abstract_titlepage.tex is processed with
\setlength{\textheight}{8.7in}


If you modify these, You can adjust your printer to produce a document
which has 1 inch margins everywhere except on the left where they are
1.5 inches, as required by the graduate school. 



Modified preamble files. You must use dbsetup to correctly configure
the preamble pages.

You must use your full name as it appears on the degree application
form to the Graduate School.

Modified dissertation_usm.cls to include word Figure and Table in List of
llustrations, and List of Tables.



REVISION 17
%DATE:      Fri Jun 21 08:01:07 CDT 2002

Modified title pages to remove bold letters required by Graduate School.


REVISION 16
%DATE:       Fri Jun  7 14:37:57 CDT 2002

Modified dissertation_usm.cls to change chapter heading size and position.
Modified ./preamble/DISS_titlepage.tex to increase line spacing.
Modified pagesize setup in DISSc.tex. The correct sizing is now:
\setlength{\textheight}{8.7in}


PLEASE NOTE THAT YOU MUST RUN THE DISSERTATION WITH
 \baselineskip=18pt
in DISSc.tex and you must use siam or plain style for the bibliography.

The bibliography must be generated using a bib file to be accceptable.


REVISION 14
DATE:         Wed Jan 10 10:05:11 CDT 2002

Modified chapters so that equations are space using % comment lines.

REVISION 10
DATE:         Wed Jan 10 10:05:11 CDT 2002

Added dbsetup to simplify the setup of the user files. Please read instructions
in ./preamble/README.


REVSISION 9
DATE:          Mon Oct 25 07:56:14 CDT 1999

Modified explanation of plotting to be consistent with LaTeX2e
using the graphicx package and added the ./figures directory to show
some options available with the new package. The package is 
recommended.


REVSISION 10
DATE Sun Jan 23 18:51:48 CST 2000

Modified ams latex chapter and added chapter describing use of fonts.


REVSISION 11
DATE Sat Feb  5 13:43:09 CST 2000
Modified ./figures directory to include discusion of creating pdf files.



  .....................................................................


Please send questions to:

                                      |
     _/    _/    _/_/_/  _/      _/   |    Joseph Kolibal
    _/    _/  _/        _/ _/_/ _/    |    Department of Mathematics
   _/    _/    _/_/_/  _/  _/  _/     |    University of Southern Mississippi
  _/    _/  _/     _/ _/      _/      |    Hattiesburg, MS 
  _/_/_/     _/_/_/  _/      _/       |    PH: (601)266-4301
                                      |    Joseph.Kolibal@usm.edu




