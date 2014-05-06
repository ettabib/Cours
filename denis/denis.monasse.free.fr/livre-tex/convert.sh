#! /bin/bash
set -x;
find . -iname "*.html" | while read f ; do
    pandoc -f html -t latex "$f" > "$f.tex"
done
set +x
