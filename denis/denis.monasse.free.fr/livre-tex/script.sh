#! /bin/bash
gsed -i -E 's/\\\\jmathmath/j/g' *.tex
gsed -i -E 's/\{\[\}/\[/g' *.tex
gsed -i -E 's/\{\]\}/\]/g' *.tex
