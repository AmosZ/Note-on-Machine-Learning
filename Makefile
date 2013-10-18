all:chapter1 example

example:example.tex
	pdflatex example.tex
chapter1:chapter1.tex
	pdflatex chapter1.tex
Mathematical_Notation:Mathematical_Notation.tex
	pdflatex Mathematical_Notation.tex

clean:
	rm -f *.aux *.log *.pdf *.dvi *.out
