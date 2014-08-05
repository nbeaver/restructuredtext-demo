.. -*- coding: utf-8 -*-

==================================
Example of reStructuredText markup
==================================

:Author: Nathaniel Beaver
:Date: $Date: 2014-08-01 (Friday, 1 August 2014) $
:Copyright: This document has been placed in the public domain.

This is meant to be read in source form.

------------------
Hyperlinks to URLs
------------------

The `reStructuredText specification`_ is on Sourceforge.

The `Wikipedia page`_ on reST is also helpful, as is the `Sphinx`_ documentation generator page.

.. _Sphinx: http://sphinx-doc.org/rest.html
.. _reStructuredText specification: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _Wikipedia page: https://en.wikipedia.org/wiki/ReStructuredText

`Inline hyperlinks <http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#hyperlink-references>` are also possible,
although they tend to clutter up the text.

`Anonymous hyperlinks`__ are also possible if you are just too lazy to name your hyperlinks.

__ http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#anonymous-hyperlinks

----------------------
Linking to other files
----------------------

Linking to the `docutils Quick Reference`_.

Linking to `this file`_.

.. _this file: reStructuredText.rst
.. _docutils Quick Reference: http://docutils.sourceforge.net/docs/user/rst/quickref.html

`Makefile.template <./Makefile.template>`_

`python-text-filter.py <python-text-filter.py>`_

------------------------------------------
Literal blocks (code, verbatim, monospace)
------------------------------------------

Example of turning an ``rst`` markup document into HTML::

    rst2html reStructuredText.rst reStructuredText.html

-----------
Math markup
-----------

The quadrative equation, :math:`a x^2 + b x + c = 0`, has two solutions, :math:`x = \frac{-b \pm \sqrt{b^2 - 4 a c} }{2 a}`.

The Einstein field equations.

.. math::
   G_{\mu\nu} \equiv R_{\mu\nu} - \frac{1}{2} R g_{\mu\nu} = \frac{8 \pi G}{c^4} T_{\mu\nu}

::

    .. math::
       G_{\mu\nu} \equiv R_{\mu\nu} - \frac{1}{2} R g_{\mu\nu} = \frac{8 \pi G}{c^4} T_{\mu\nu}

-----------------------
Footnotes and citations
-----------------------

Cheese is delicious.[#]_

Citations are easy.[jdoe2014]_

.. [#] Especially limburger cheese.
.. [jdoe2014] Doe, John. Bulletin of Stuff. 2104.

------
Tables
------

+---+---+
| 1 | 2 |
+===+===+
| 3 | 4 |
+---+---+

::

    +---+---+
    | 1 | 2 |
    +===+===+
    | 3 | 4 |
    +---+---+

