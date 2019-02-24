SHELL=/bin/bash

output_latex.pdf : main.tex
	pdflatex -interaction=nonstopmode main.tex || true
	rm -f main.aux main.log main.out main.snm
	rm -f main.toc main.out main.blg main.bbl
	rm -f texput.log
	mv main.pdf output_latex.pdf

