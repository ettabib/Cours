#! /bin/bash

echo '#! /bin/bash' > script.sh
gsed -i -Ee 's/\\href\{(.*)\}//g' *.tex
gsed -i -Ee 's/\\hyperref\[.*\]\{tail\}//g' *.tex
cat corres.txt | awk '{print "s/"$1"/"$2"/g"}' | gsed -E "s/^(.*)$/\'\1\'/g" | awk '{print "gsed -i -E " $1 " *.tex" }' >> script.sh

gsed -i -E 's/Définition/\\begin\{de\}/g' *.tex

./script.sh

# echo "\documentclass{Math}" > Mycourse.tex
# echo " " >> Mycourse.tex
# echo "\begin{document}" >> Mycourse.tex
# for i in coursse*.tex;do
#     echo "\include{${i%%.tex}}" >> Mycourse.tex
# done
    # echo "\end{document}" >> Mycourse.tex
