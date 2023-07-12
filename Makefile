#!/bin/bash

ClassName=thesis-qom
Trash="*.{aux,log,dvi,idx,ilg,ind,toc,out,pyg,synctex,tdo,blg,lot,lol,lof,syn,suc,bbl,syc,brf,los,brg,blg}"

all: doc clean

doc:
	xelatex --shell-escape "${ClassName}"
	bibtex "${ClassName}"
	xelatex --shell-escape "${ClassName}"
	xelatex --shell-escape "${ClassName}"
	evince "${ClassName}".pdf &

clean:
	@rm -rfv "${Trash}"
	@cd chapters; rm -rfv "${Trash}"
	@rm -fv fonts.zip

ctan: clean
	mkdir -p "${ClassName}"/doc "${ClassName}"/doc/chapters "${ClassName}"/tex
	cp -v README "${ClassName}"
	cp -v "${ClassName}".cls  "${ClassName}"/tex
	cp -v "${ClassName}".tex  "${ClassName}".pdf    "${ClassName}"/doc
	cp -rv images		"${ClassName}"/doc
	cp -rv chapters/bib-index.tex chapters/correctWriting.tex chapters/installation.tex chapters/intro.tex chapters/latexCommands.tex chapters/morelatex.tex chapters/preface.tex chapters/qomthesis-guide.tex chapters/realSample.tex		"${ClassName}"/doc/chapters
	cp -v dic* labs.tex settings.tex	references.bib	"${ClassName}"/doc
	zip -r "${ClassName}".zip "${ClassName}"
	mv -fv "${ClassName}".zip ..
	rm -rfv ../"${ClassName}"
	mv -fv "${ClassName}" ..


BATCHFILE=InstallFonts.bat
FONTS=fonts
.PHONY: fonts
fonts: clean
	# mkjobtexmf --jobname="${ClassName}" --texopt='--shell-escape' --cmd-tex='tex -halt-on-error "${ClassName}"' --exclude-ext aux,log,toc --dest=fonts
	@mkdir -p "${FONTS}"
	@grep -riE "(defpersianfont|settextfont|IRTitr)" *cls *tex| cut -d"{" -f2 | cut -d"}" -f1 | xargs -I {} bash -c "fc-list | grep -i '{}' | cut -d: -f1 | grep -v share" | xargs -I {} bash -c "cp '{}' ./fonts"
	@echo "REM Run this file 'As an Administrator' to copy fonts in Windows fonts directory" > "${BATCHFILE}"
	@echo "copy %~dp0${FONTS}\*.?tf %windir%\fonts" >> "${BATCHFILE}"
	@echo "pause" >> "${BATCHFILE}"
	@unix2dos "${BATCHFILE}"
	@zip -r "${FONTS}".zip "${FONTS}" "${BATCHFILE}"
	@rm -rf "${FONTS}" "${BATCHFILE}"
