all: demo.rst Makefile
	mkdir --parents out
	rst2html  demo.rst out/demo.html
	rst2latex demo.rst out/demo.tex
	rst2man   demo.rst out/demo.man
	rst2odt   demo.rst out/demo.odt
	rst2s5    demo.rst out/demo_s5.html
	rst2xml   demo.rst out/demo.xml
	rst2xetex demo.rst out/demo.xetex

open:
	xdg-open out/demo.html
	xdg-open out/demo.tex
	xdg-open out/demo.odt
	xdg-open out/demo_s5.html
	xdg-open out/demo.xml
	xdg-open out/demo.xetex
	# TODO: preview manpage
