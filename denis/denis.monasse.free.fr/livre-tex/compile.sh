#! /bin/bash

pdflatex -interaction nonstopmode Mycourse.tex 
makeindex Mycourse.idx
pdflatex -interaction nonstopmode Mycourse.tex 
