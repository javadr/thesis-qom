#!/bin/bash

ClassName="thesis-qom"
Trash="*.{aux,log,dvi,idx,ilg,ind,toc,out,pyg,synctex,tdo,blg,lot,lol,lof,syn,suc,bbl,syc,brf,los,brg,blg}"

all: doc clean

doc:
	xelatex --shell-escape "$(ClassName)"
	bibtex "$(ClassName)"
	xelatex --shell-escape "$(ClassName)"
	xelatex --shell-escape "$(ClassName)"
	evince "$(ClassName)".pdf &

clean:
	@rm -rfv "$(Trash)"
	@cd chapters; rm -rfv "$(Trash)"
	@rm -fv fonts.zip

ctan: clean
	mkdir -p "$(ClassName)"/doc "$(ClassName)"/doc/chapters "$(ClassName)"/tex
	cp -v README "$(ClassName)"
	cp -v "$(ClassName)".cls  "$(ClassName)"/tex
	cp -v "$(ClassName)".tex  "$(ClassName)".pdf    "$(ClassName)"/doc
	cp -rv images		"$(ClassName)"/doc
	cp -rv chapters/bib-index.tex chapters/correctWriting.tex chapters/installation.tex chapters/intro.tex chapters/latexCommands.tex chapters/morelatex.tex chapters/preface.tex chapters/qomthesis-guide.tex chapters/realSample.tex		"$(ClassName)"/doc/chapters
	cp -v dic* labs.tex settings.tex	references.bib	"$(ClassName)"/doc
	zip -r "$(ClassName)".zip "$(ClassName)"
	mv -fv "$(ClassName)".zip ..
	rm -rfv ../"$(ClassName)"
	mv -fv "$(ClassName)" ..

.PHONY: fonts
fonts:
	# mkjobtexmf --jobname="$(ClassName)" --texopt='--shell-escape' --cmd-tex='tex -halt-on-error "$(ClassName)"' --exclude-ext aux,log,toc --dest=fonts
	@mkdir -p fonts
	@grep -ri defpersianfont | cut -d"{" -f2 | tr -d "}]" | xargs -I{} bash -c "fc-list | grep -i '{}'|cut -d: -f1" | xargs -I {} cp {} fonts
	@zip -r fonts.zip fonts
	@rm -rf fonts

