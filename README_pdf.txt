Notes on using pdf and dvips:


To create a document which is in pdf format instead of postscript format
you can either use

 pdflatex DISSc

which requires that there be no embedded postscript image files (these cannot
be included into a pdf document, i.e., all of your image files must be
in pdf, tiff, or jpg format), or you can convert the files from postscript
to pdf format. To do this you will require the utilities ps2pdf or the
Imagemagick utility convert. To invoke, use

 convert DISSc.dps DISSc.pdf

or

 ps2pdf DISSc.dps DISSc.pdf

In either case, the Type 1 scalable fonts will not be included in your file
unless you have created the postscript file with the option to embed these
fonts in the document. The procedure for doing this is

 dvips -Ppdf -G0  DISSc

Note, that the definition of dvips on the computers iris and pax already
has this loaded as the default option for dvips and so this is not necessary.

Sometimes image files created in postscript will cause difficulties. If you
are having difficulty with the dvips command creating a file which is usable,
try the -K option, i.e., use


 dvips -Ppdf -G0 -K  DISSc

WARNING: These uses of dvips assume that the default is to convert the file
to a postscript file on your disk, not to print it directly (which has been
the default on many versions of linux/latex). In that case, please use
the output option, i.e.,


 dvips -Ppdf -G0 -K  DISSc -o DISSc.dps




                                     Joseph Kolibal



