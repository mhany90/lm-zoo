.. LM Zoo documentation master file, created by
   sphinx-quickstart on Tue Dec 10 16:49:22 2019.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to LM Zoo
==================================

.. figure:: _static/logo.png
   :width: 80%
   :align: center

.. toctree::
   quickstart
   commands
   models
   python_api
   contributing
   model_api
   support
   thanks
   :hidden:

|

The Language Model Zoo (LM Zoo) is an open-source repository of
state-of-the-art language models, designed to support black-box access to model
predictions and representations. It provides the command line tool ``lm-zoo``,
a standard interface for interacting with language models.

You can use ``lm-zoo`` to extract word-level surprisal data for natural
language text::

  $ wget https://cpllab.github.io/lm-zoo/metamorphosis.txt -O metamorphosis.txt
  $ head -n3 metamorphosis.txt
  One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin.
  He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections.
  The bedding was hardly able to cover it and seemed ready to slide off any moment.

  $ lm-zoo get-surprisals ngram metamorphosis.txt
  sentence_id     token_id        token   surprisal
  1       1       one     7.76847
  1       2       morning 9.40638
  1       3       ,       1.05009
  1       4       when    7.08489
  1       5       gregor  18.8963
  1       6       <unk>   4.27466
  ...

  $ lm-zoo get-surprisals GRNN metamorphosis.txt
  sentence_id     token_id        token   surprisal
  1       1       One     0.000000
  1       2       morning 11.585580
  1       3       ,       2.359496
  1       4       when    6.319129
  1       5       Gregor  18.608147
  1       6       <unk>   3.706054
  ...

For more features and installation instructions, see our :ref:`quickstart` guide.

LM Zoo is maintained by the
`MIT Computational Psycholinguistics Laboratory <http://cpl.mit.edu/>`_.





.. Indices and tables
.. ==================

.. * :ref:`genindex`
.. * :ref:`search`
