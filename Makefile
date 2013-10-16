all:chapter1 example

example:example.tex
	pdflatex example.tex
chapter1:chapter1.tex
	pdflatex chapter1.tex

clean:
	rm -f *.aux *.log *.pdf *.dvi
