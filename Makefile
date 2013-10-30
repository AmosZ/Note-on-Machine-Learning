all:chapter1 example latex

example:example.tex
	pdflatex example.tex
chapter1:chapter1.tex
	pdflatex chapter1.tex
Mathematical_Notation:Mathematical_Notation.tex
	pdflatex Mathematical_Notation.tex
review:chapter1.pdf
	evince chapter1.pdf
latex:
	pdflatex latex_syntex.tex

clean:
	rm -f *.aux *.log *.dvi *.out
