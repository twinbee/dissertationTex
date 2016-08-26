include ./Makefile.def


all:
	-(echo "Making ALL:")
	-($(EINIT) $(DISSC))

next:
	-(echo "Making NEXT, running latex, makeindex, bibtex, dvips:")
	-($(ERUN) $(DISSC))
	-(makeindex $(DISSC))
	-($(EBIBTEX) $(DISSC))
	-($(EPOST) $(DISSC))

bbl:
	-(echo "Making bbl file using $(DISSC).bib file")
	-($(ERUN) $(DISSC))
	-($(EBIBTEX) $(DISSC))

index:
	-(echo "Making index files")
	-(latex $(DISSC))
	-(makeindex $(DISSC))
	-(latex $(DISSC))

glos:
	-(echo "Making glossary files")
	-(latex $(DISSC))
	-($(EGLOSTEX)
	-(latex $(DISSC))


dvi:


dvi:
	-(echo "Making ALL:")
	-($(ERUN) $(DISSC))


ps:
	-(echo "Running dvips using $(DISSC).dvi file:")
	-($(EPOST) $(DISSC))

npspdf:
	-(echo "Running convert using $(DISSC).dps file without embedded T1 fonts:")
	-($(EPOST) $(DISSC) )
	-($(EPSPDF) $(DISSC) )

pspdf:
	-(echo "Running convert using $(DISSC).dps file with embedded T1 fonts:")
	-($(EPS) $(DISSC) )
	-($(EPSPDF) $(DISSC) )



pdf:
	-(echo "Running pdflatex using $(DISSC).tex file:")
	-($(EPDF) $(DISSC))



clean:
	-(echo "Cleaning up all temporary files.")
	-($(ECLEANTX))

