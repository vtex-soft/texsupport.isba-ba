
default: badoc.pdf .FORCE

%.pdf: %.ps 
	ps2pdf $<

%.ps: %.dvi
	dvips  $*

%.dvi: %.tex .FORCE
	latex $<
	bibtex $*

clean:
	rm -rf *.aux *.blg *.out *.log *.brf *.bbl 

.FORCE:
