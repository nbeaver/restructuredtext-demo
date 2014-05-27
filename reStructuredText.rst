==================================
Example of reStructuredText markup
==================================

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
