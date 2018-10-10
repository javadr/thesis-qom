all:	thesis.tex
	xelatex --shell-escape thesis 
	bibtex thesis
	xelatex --shell-escape thesis 
	evince thesis.pdf &

clean:
	rm -rfv *.aux *.log *.dvi *.idx *.ilg *.ind *.toc *.out *.pyg *.synctex *.tdo *.blg *.lot *.lol *.lof *.syn *.suc *.bbl *.syc *.brf *.los
	cd chapters; rm -rfv *.aux *.log *.dvi *.idx *.ilg *.ind *.toc *.out *.pyg *.synctex *.tdo *.blg *.lot *.lol *.lof *.syn *.suc *.bbl *.syc *.brf *.los
