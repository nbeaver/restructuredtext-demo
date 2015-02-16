all: README.rst Makefile
	mkdir --parents out
	rst2html  README.rst out/README.html
	rst2latex README.rst out/README.tex
	rst2man   README.rst out/README.man
	rst2odt   README.rst out/README.odt
	rst2s5    README.rst out/README_s5.html
	rst2xml   README.rst out/README.xml
	rst2xetex README.rst out/README.xetex
	pandoc --from=rst --to=native       README.rst --output=out/pandoc-native.hs
	pandoc --from=rst --to=json         README.rst --output=out/pandoc-json.json
	pandoc --from=rst --to=plain        README.rst --output=out/pandoc-plain.txt
	pandoc --from=rst --to=markdown     README.rst --output=out/pandoc-markdown.md
	pandoc --from=rst --to=rst          README.rst --output=out/pandoc-rst.rst
	pandoc --from=rst --to=html         README.rst --output=out/pandoc-xhtml.html
	pandoc --from=rst --to=html5        README.rst --output=out/pandoc-html5.html
	pandoc --from=rst --to=latex        README.rst --output=out/pandoc-latex.tex
	pandoc --from=rst --to=beamer       README.rst --output=out/pandoc-beamer.tex
	pandoc --from=rst --to=context      README.rst --output=out/pandoc-context.tex
	pandoc --from=rst --to=man          README.rst --output=out/pandoc-man.man
	pandoc --from=rst --to=mediawiki    README.rst --output=out/pandoc-mediawiki.txt
	pandoc --from=rst --to=textile      README.rst --output=out/pandoc-textile.txt
	pandoc --from=rst --to=org          README.rst --output=out/pandoc-org.org
	pandoc --from=rst --to=texinfo      README.rst --output=out/pandoc-texinfo.texinfo
	pandoc --from=rst --to=docbook      README.rst --output=out/pandoc-docbook.xml
	pandoc --from=rst --to=opendocument README.rst --output=out/pandoc-opendocument.xml
	pandoc --from=rst --to=odt          README.rst --output=out/pandoc-odt.odt
	pandoc --from=rst --to=docx         README.rst --output=out/pandoc-docx.docx
	pandoc --from=rst --to=epub         README.rst --output=out/pandoc-epub.epub
	pandoc --from=rst --to=asciidoc     README.rst --output=out/pandoc-asciidoc.txt
	pandoc --from=rst --to=slidy        README.rst --output=out/pandoc-slidy.html
	pandoc --from=rst --to=slideous     README.rst --output=out/pandoc-slideous.html
	pandoc --from=rst --to=dzslides     README.rst --output=out/pandoc-dzslides.html
	pandoc --from=rst --to=s5           README.rst --output=out/pandoc-s5.html
	pandoc --from=rst --to=rtf          README.rst --output=out/pandoc-rtf.rtf

open-all:
	xdg-open out/README.html
	xdg-open out/README.tex
	xdg-open out/README.odt
	xdg-open out/README_s5.html
	xdg-open out/README.xml
	xdg-open out/README.xetex
	xdg-open out/pandoc-native.hs
	xdg-open out/pandoc-json.json
	xdg-open out/pandoc-plain.txt
	xdg-open out/pandoc-markdown.md
	xdg-open out/pandoc-rst.rst
	xdg-open out/pandoc-xhtml.html
	xdg-open out/pandoc-html5.html
	xdg-open out/pandoc-latex.tex
	xdg-open out/pandoc-beamer.tex
	xdg-open out/pandoc-context.tex
	xdg-open out/pandoc-man.man
	xdg-open out/pandoc-mediawiki.txt
	xdg-open out/pandoc-texfile.txt
	xdg-open out/pandoc-org.org
	xdg-open out/pandoc-texinfo.texinfo
	xdg-open out/pandoc-docbook.xml
	xdg-open out/pandoc-opendocument.xml
	xdg-open out/pandoc-odt.odt
	xdg-open out/pandoc-docx.docx
	xdg-open out/pandoc-epub.epub
	xdg-open out/pandoc-asciidoc.txt
	xdg-open out/pandoc-slidy.html
	xdg-open out/pandoc-slideous.html
	xdg-open out/pandoc-dzslides.html
	xdg-open out/pandoc-s5.html
	xdg-open out/pandoc-rtf.rtf
