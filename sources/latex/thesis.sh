#!/bin/bash

latex thesis.tex
%bibtex thesis
latex thesis.tex
%latex thesis.tex
dvipdf thesis
dvipdf thesis
latex thesis.tex
latex thesis.tex
dvipdf thesis
dvipdf thesis

pdflatex pubcovers_b5.tex

pdftk thesis.pdf pubcovers_b5.pdf cat output ../publications/thesis-LeoLahti-2010.pdf

# If the introduction has odd number of pages, add one
# empty page
# pdflatex empty.tex
# pdftk thesis.pdf empty.pdf pubcovers.pdf cat output thesisfull.pdf
