.. -*- coding: utf-8 -*-

==================================
Example of reStructuredText markup
==================================

:Author: Nathaniel Beaver
:Date: $Date: 2014-08-01 (Friday, 1 August 2014) $
:Copyright: This document has been placed in the public domain.

If you are reading an output format like HTML,
the source file is `demo.rst <../demo.rst>`_.

This is meant to be more of a template than a tutorial,
so reading the output is not very helpful.

.. contents::

------------------
Hyperlinks to URLs
------------------

The `reStructuredText specification`_ is on Sourceforge,
as is the `docutils Quick Reference`_.

The `Wikipedia page`_ on reST is also helpful,
as is the `Sphinx`_ documentation generator page.

.. _Sphinx: http://sphinx-doc.org/rest.html
.. _reStructuredText specification: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _Wikipedia page: https://en.wikipedia.org/wiki/ReStructuredText
.. _docutils Quick Reference: http://docutils.sourceforge.net/docs/user/rst/quickref.html

`Inline hyperlinks <http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#hyperlink-references>`_ are also possible,
although they tend to clutter up the text.

`Anonymous hyperlinks`__ are also possible if you are just too lazy to name your hyperlinks,
or if you want two hyperlinks with the same text (e.g. `Georgia`__ or `Georgia`__, `can`__ or `can`__).

__ http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#anonymous-hyperlinks
__ https://en.wiktionary.org/wiki/Georgia#Etymology_1
__ https://en.wiktionary.org/wiki/Georgia#Etymology_2
__ https://en.wiktionary.org/wiki/can#Verb
__ https://en.wiktionary.org/wiki/can#Noun

They are assigned by the order of the links in the document,
unlike named hyperlink targets where order is irrelevant.

----------------------
Linking to local files
----------------------

Relative and absolute links both work.

For example, we can make a relative link to `the source file`_ in the parent directory,
or link to the same `file inline <../demo.rst>`_.

.. _the source file: ../demo.rst


Absolute links are done similarly.

`Root directory`_

.. _Root directory: /

- `/etc/ </etc/>`_
- `/home/ </home/>`_
- `/tmp/ </tmp/>`_
- `/var/ </var/>`_
- `C:/Users <C:/Users>`_

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

-------------------------------------------------
Literal blocks (a.k.a. code, verbatim, monospace)
-------------------------------------------------

Example of turning an ``rst`` markup document into HTML::

    rst2html reStructuredText.rst reStructuredText.html

-----------
Math markup
-----------

The quadratic equation, :math:`a x^2 + b x + c = 0`, has two solutions, :math:`x = \frac{-b \pm \sqrt{b^2 - 4 a c} }{2 a}`.

The Einstein field equations.

.. math::
   G_{\mu\nu} \equiv R_{\mu\nu} - \frac{1}{2} R g_{\mu\nu} = \frac{8 \pi G}{c^4} T_{\mu\nu}

-----------------------
Footnotes and citations
-----------------------

Cheese is delicious. [#cheese]_

Labeled footnotes? Why bother? [#]_

Symbolic footnotes: there are ten symbols to run through before it starts doubling them up.
[*]_ [*]_ [*]_ [*]_ [*]_ [*]_ [*]_ [*]_ [*]_ [*]_ [*]_

Citations with the label instead of a number are easy. [jdoe2014]_

.. [#cheese] Especially limburger cheese.
.. [#] You can always add a label later.
.. [*] Asterisk `*`.
.. [*] Dagger `†`.
.. [*] Double dagger `‡`.
.. [*] Section sign `§`.
.. [*] Pilcrow/paragraph sign `¶`.
.. [*] Number sign `#`.
.. [*] Black spade suit `♠`.
.. [*] Black heart suit `♥`.
.. [*] Black diamond suit `♠`.
.. [*] Black club suit `♣`.
.. [*] Double asterisk `**`.
.. [jdoe2014] Doe, John. Bulletin of Stuff. 2104.

------
Tables
------

A multiplication table.

+---+---+---+---+
|   | 1 | 2 | 3 |
+---+---+---+---+
| 1 | 1 | 2 | 3 |
+---+---+---+---+
| 2 | 2 | 4 | 6 |
+---+---+---+---+
| 3 | 3 | 6 | 9 |
+---+---+---+---+

Headers

+-------+
| X | Y |
+===+===+
| 1 | 1 |
+---+---+
| 2 | 4 |
+---+---+
| 3 | 9 |
+---+---+

Lists in tables

+-------+-------+
| - 1st | - 4th |
| - 2nd | - 5th |
| - 3rd | - 6th |
+-------+-------+

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

Any language benefits from the ability to comment things out.

.. This won't appear,
   since we used two dots.

If we use ``rst2html``, we get this output::

    <!-- This won't appear,
    since we used two dots. -->

If we use ``rst2latex``, we get this output::

    % This won't appear,
    % since we used two dots.

