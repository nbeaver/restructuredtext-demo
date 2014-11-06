all: reStructuredText.rst
	rst2html  reStructuredText.rst out/reStructuredText.html
	rst2latex reStructuredText.rst out/reStructuredText.tex
	rst2man   reStructuredText.rst out/reStructuredText.man
	rst2odt   reStructuredText.rst out/reStructuredText.odt
	rst2s5    reStructuredText.rst out/reStructuredText_s5.html
	rst2xml   reStructuredText.rst out/reStructuredText.xml
	rst2xetex reStructuredText.rst out/reStructuredText.xetex

open:
	xdg-open out/reStructuredText.html
	xdg-open out/reStructuredText.tex
	xdg-open out/reStructuredText.odt
	xdg-open out/reStructuredText_s5.html
	xdg-open out/reStructuredText.xml
	xdg-open out/reStructuredText.xetex
	# TODO: preview manpage
