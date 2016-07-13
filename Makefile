all: readme.rst Makefile
	mkdir --parents out
	rst2html  readme.rst out/readme.html
	rst2latex readme.rst out/readme.tex
	rst2man   readme.rst out/readme.man
	rst2odt   readme.rst out/readme.odt
	rst2s5    readme.rst out/readme_s5.html
	rst2xml   readme.rst out/readme.xml
	rst2xetex readme.rst out/readme.xetex
	pandoc --from=rst --to=native       readme.rst --output=out/pandoc-native.hs
	pandoc --from=rst --to=json         readme.rst --output=out/pandoc-json.json
	pandoc --from=rst --to=plain        readme.rst --output=out/pandoc-plain.txt
	pandoc --from=rst --to=markdown     readme.rst --output=out/pandoc-markdown.md
	pandoc --from=rst --to=rst          readme.rst --output=out/pandoc-rst.rst
	pandoc --from=rst --to=html         readme.rst --output=out/pandoc-xhtml.html
	pandoc --from=rst --to=html5        readme.rst --output=out/pandoc-html5.html
	pandoc --from=rst --to=latex        readme.rst --output=out/pandoc-latex.tex
	pandoc --from=rst --to=beamer       readme.rst --output=out/pandoc-beamer.tex
	pandoc --from=rst --to=context      readme.rst --output=out/pandoc-context.tex
	pandoc --from=rst --to=man          readme.rst --output=out/pandoc-man.man
	pandoc --from=rst --to=mediawiki    readme.rst --output=out/pandoc-mediawiki.txt
	pandoc --from=rst --to=textile      readme.rst --output=out/pandoc-textile.txt
	pandoc --from=rst --to=org          readme.rst --output=out/pandoc-org.org
	pandoc --from=rst --to=texinfo      readme.rst --output=out/pandoc-texinfo.texinfo
	pandoc --from=rst --to=docbook      readme.rst --output=out/pandoc-docbook.xml
	pandoc --from=rst --to=opendocument readme.rst --output=out/pandoc-opendocument.xml
	pandoc --from=rst --to=odt          readme.rst --output=out/pandoc-odt.odt
	pandoc --from=rst --to=docx         readme.rst --output=out/pandoc-docx.docx
	pandoc --from=rst --to=epub         readme.rst --output=out/pandoc-epub.epub
	pandoc --from=rst --to=asciidoc     readme.rst --output=out/pandoc-asciidoc.txt
	pandoc --from=rst --to=slidy        readme.rst --output=out/pandoc-slidy.html
	pandoc --from=rst --to=slideous     readme.rst --output=out/pandoc-slideous.html
	pandoc --from=rst --to=dzslides     readme.rst --output=out/pandoc-dzslides.html
	pandoc --from=rst --to=s5           readme.rst --output=out/pandoc-s5.html
	pandoc --from=rst --to=rtf          readme.rst --output=out/pandoc-rtf.rtf

open-all:
	xdg-open out/readme.html
	xdg-open out/readme.tex
	xdg-open out/readme.odt
	xdg-open out/readme_s5.html
	xdg-open out/readme.xml
	xdg-open out/readme.xetex
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

clean :
	rm -rf out/
