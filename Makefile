DOCUTIL = \
    out/readme.html \
    out/readme.man \
    out/readme.odt \
    out/readme_s5.html \
    out/readme.tex \
    out/readme.xetex \
    out/readme.xml

PANDOC = \
    out/pandoc-asciidoc.txt \
    out/pandoc-beamer.tex \
    out/pandoc-context.tex \
    out/pandoc-docbook.xml \
    out/pandoc-docx.docx \
    out/pandoc-dzslides.html \
    out/pandoc-epub.epub \
    out/pandoc-html5.html \
    out/pandoc-json.json \
    out/pandoc-latex.tex \
    out/pandoc-man.man \
    out/pandoc-markdown.md \
    out/pandoc-mediawiki.txt \
    out/pandoc-native.hs \
    out/pandoc-odt.odt \
    out/pandoc-opendocument.xml \
    out/pandoc-org.org \
    out/pandoc-plain.txt \
    out/pandoc-rst.rst \
    out/pandoc-rtf.rtf \
    out/pandoc-s5.html \
    out/pandoc-slideous.html \
    out/pandoc-slidy.html \
    out/pandoc-texinfo.texinfo \
    out/pandoc-textile.txt \
    out/pandoc-xhtml.html

just-html : out/readme.html

docutil : $(DOCUTIL)

pandoc : $(PANDOC)

all: readme.rst Makefile $(DOCUTIL) $(PANDOC)

out/readme.html : readme.rst
	rst2html  readme.rst out/readme.html
out/readme.tex : readme.rst
	rst2latex readme.rst out/readme.tex
out/readme.man : readme.rst
	rst2man   readme.rst out/readme.man
out/readme.odt : readme.rst
	rst2odt   readme.rst out/readme.odt
out/readme_s5.html : readme.rst
	rst2s5    readme.rst out/readme_s5.html
out/readme.xml : readme.rst
	rst2xml   readme.rst out/readme.xml
out/readme.xetex : readme.rst
	rst2xetex readme.rst out/readme.xetex
out/pandoc-native.hs : readme.rst
	pandoc --from=rst --to=native       readme.rst --output=out/pandoc-native.hs
out/pandoc-json.json : readme.rst
	pandoc --from=rst --to=json         readme.rst --output=out/pandoc-json.json
out/pandoc-plain.txt : readme.rst
	pandoc --from=rst --to=plain        readme.rst --output=out/pandoc-plain.txt
out/pandoc-markdown.md : readme.rst
	pandoc --from=rst --to=markdown     readme.rst --output=out/pandoc-markdown.md
out/pandoc-rst.rst : readme.rst
	pandoc --from=rst --to=rst          readme.rst --output=out/pandoc-rst.rst
out/pandoc-xhtml.html : readme.rst
	pandoc --from=rst --to=html         readme.rst --output=out/pandoc-xhtml.html
out/pandoc-html5.html : readme.rst
	pandoc --from=rst --to=html5        readme.rst --output=out/pandoc-html5.html
out/pandoc-latex.tex : readme.rst
	pandoc --from=rst --to=latex        readme.rst --output=out/pandoc-latex.tex
out/pandoc-beamer.tex : readme.rst
	pandoc --from=rst --to=beamer       readme.rst --output=out/pandoc-beamer.tex
out/pandoc-context.tex : readme.rst
	pandoc --from=rst --to=context      readme.rst --output=out/pandoc-context.tex
out/pandoc-man.man : readme.rst
	pandoc --from=rst --to=man          readme.rst --output=out/pandoc-man.man
out/pandoc-mediawiki.txt : readme.rst
	pandoc --from=rst --to=mediawiki    readme.rst --output=out/pandoc-mediawiki.txt
out/pandoc-textile.txt : readme.rst
	pandoc --from=rst --to=textile      readme.rst --output=out/pandoc-textile.txt
out/pandoc-org.org : readme.rst
	pandoc --from=rst --to=org          readme.rst --output=out/pandoc-org.org
out/pandoc-texinfo.texinfo : readme.rst
	pandoc --from=rst --to=texinfo      readme.rst --output=out/pandoc-texinfo.texinfo
out/pandoc-docbook.xml : readme.rst
	pandoc --from=rst --to=docbook      readme.rst --output=out/pandoc-docbook.xml
out/pandoc-opendocument.xml : readme.rst
	pandoc --from=rst --to=opendocument readme.rst --output=out/pandoc-opendocument.xml
out/pandoc-odt.odt : readme.rst
	pandoc --from=rst --to=odt          readme.rst --output=out/pandoc-odt.odt
out/pandoc-docx.docx : readme.rst
	pandoc --from=rst --to=docx         readme.rst --output=out/pandoc-docx.docx
out/pandoc-epub.epub : readme.rst
	pandoc --from=rst --to=epub         readme.rst --output=out/pandoc-epub.epub
out/pandoc-asciidoc.txt : readme.rst
	pandoc --from=rst --to=asciidoc     readme.rst --output=out/pandoc-asciidoc.txt
out/pandoc-slidy.html : readme.rst
	pandoc --from=rst --to=slidy        readme.rst --output=out/pandoc-slidy.html
out/pandoc-slideous.html : readme.rst
	pandoc --from=rst --to=slideous     readme.rst --output=out/pandoc-slideous.html
out/pandoc-dzslides.html : readme.rst
	pandoc --from=rst --to=dzslides     readme.rst --output=out/pandoc-dzslides.html
out/pandoc-s5.html : readme.rst
	pandoc --from=rst --to=s5           readme.rst --output=out/pandoc-s5.html
out/pandoc-rtf.rtf : readme.rst
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
	rm -rf -- $(DOCUTIL) $(PANDOC)
