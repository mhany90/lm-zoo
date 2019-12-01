#!/usr/bin/env python

import sys
import codecs
from nltk.tokenize import TreebankWordTokenizer

import get_raw

tokenizer = TreebankWordTokenizer()

for line in codecs.open(sys.argv[1], encoding="utf-8"):
    print(" ".join(tokenizer.tokenize(line.strip())))