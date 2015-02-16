all: README.rst Makefile
	mkdir --parents out
	rst2html  README.rst out/README.html
	rst2latex README.rst out/README.tex
	rst2man   README.rst out/README.man
	rst2odt   README.rst out/README.odt
	rst2s5    README.rst out/README_s5.html
	rst2xml   README.rst out/README.xml
	rst2xetex README.rst out/README.xetex

open:
	xdg-open out/README.html
	xdg-open out/README.tex
	xdg-open out/README.odt
	xdg-open out/README_s5.html
	xdg-open out/README.xml
	xdg-open out/README.xetex
	# TODO: preview manpage
