.. -*- coding: utf-8 -*-

==================================
Example of reStructuredText markup
==================================

:Author: Nathaniel Beaver
:Date: $Date: 2014-08-01 (Friday, 1 August 2014) $
:Copyright: This document has been placed in the public domain.

This is meant to be read in source form.

.. contents::

------------------
Hyperlinks to URLs
------------------

The `reStructuredText specification`_ is on Sourceforge.

The `Wikipedia page`_ on reST is also helpful, as is the `Sphinx`_ documentation generator page.

.. _Sphinx: http://sphinx-doc.org/rest.html
.. _reStructuredText specification: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _Wikipedia page: https://en.wikipedia.org/wiki/ReStructuredText

`Inline hyperlinks <http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#hyperlink-references>`_ are also possible,
although they tend to clutter up the text.

`Anonymous hyperlinks`__ are also possible if you are just too lazy to name your hyperlinks or if you want `two hyperlinks with the same text`_.
They are assigned by the order of the links in the document,
unlike named hyperlink targets where order is irrelevant.

__ http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#anonymous-hyperlinks
.. _two hyperlinks with the same text: http://stackoverflow.com/questions/5464627/how-to-have-same-text-in-two-links-with-restructured-text

----------------------
Linking to other files
----------------------

Linking to the `docutils Quick Reference`_.

Linking to `this file`_.

.. _this file: reStructuredText.rst
.. _docutils Quick Reference: http://docutils.sourceforge.net/docs/user/rst/quickref.html

`Makefile.template <./Makefile.template>`_

`python-text-filter.py <python-text-filter.py>`_

----------------------------------------
Internal hyperlinks and cross references
----------------------------------------

Linking to the section on `how to do math`_.

.. _how to do math: `Math markup`_

Linking to `the title`_.

.. _the title: `Example of reStructuredText markup`_

Linking to the section on `unordered/bulleted lists`_.

.. _unordered/bulleted lists: `Bulleted lists.`_

Linking to an `arbitrary cross-reference target`_.

.. _arbitrary cross-reference target: `arbitrary`_

blah
blah
blah
blah

.. _arbitrary:

blah
blah
blah
blah

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

Cheese is delicious. [#cheese]_

Labeled footnotes? I'm too lazy. [#]_

Symbols are cool. [*]_

Citations with the label instead of a number are easy. [jdoe2014]_

.. [#cheese] Especially limburger cheese.
.. [#] Yeah, I'll add the label later.
.. [*] Yup, numbers are just lame.
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

---------------
Bulleted lists.
---------------

- One
  example
- using hyphens.

* Another
  using
* asterisks.

+ Another
  using
+ plus signs.

+ Nesting levels: 1st.

  * 2nd level.
  * 2nd level again.

    - 3rd level.
    - 3rd level again.

      * 4th level.
      * 4th level again.

        + 5th level.

--------
Comments
--------

Any language benefits from the ability to comment things out::

    .. This won't appear,
       since we used two dots.


.. This won't appear,
   since we used two dots.

If we use, e.g. ``rst2html``, we get this::

    <!-- This won't appear,
    since we used two dots. -->
