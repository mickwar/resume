SHELL=/bin/bash

resume.pdf : resume.tex
	pdflatex -interaction=nonstopmode resume.tex || true
	rm -f resume.aux resume.log resume.out resume.snm
	rm -f resume.toc resume.out resume.blg resume.bbl
	rm -f texput.log

