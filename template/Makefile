
default: template.pdf

%.pdf: %.ps
	ps2pdf $<

%.ps: %.dvi
	dvips  $*

%.dvi: %.tex .FORCE
	latex $*
#	bibtex $*

clean:
	rm -rf *.aux *.blg *.out *.log *.bbl 

.FORCE: 
