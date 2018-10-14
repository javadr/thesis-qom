ClassName=thesis-qom
Trash=*.aux *.log *.dvi *.idx *.ilg *.ind *.toc *.out *.pyg *.synctex *.tdo *.blg *.lot *.lol *.lof *.syn *.suc *.bbl *.syc *.brf *.los *.brg

all: doc clean

doc:
	xelatex --shell-escape $(ClassName)
	bibtex $(ClassName)
	xelatex --shell-escape $(ClassName)
	xelatex --shell-escape $(ClassName)
	evince $(ClassName).pdf &	

clean:
	rm -rfv $(Trash)
	cd chapters; rm -rfv $(Trash)

ctan: 
#	$(MAKE) clean
	mkdir -p $(ClassName)/doc $(ClassName)/tex
	cp -v README.md README
	mv README $(ClassName)
	cp -v $(ClassName).cls  $(ClassName)/tex
	cp -v chapters/* images/*		$(ClassName)/doc
	cp -v dic* labs.tex settings.tex		$(ClassName)/doc
	zip -r $(ClassName).zip $(ClassName)
	mv -fv $(ClassName).zip ..
	rm -rfv ../$(ClassName)
	mv -fv $(ClassName) ..
