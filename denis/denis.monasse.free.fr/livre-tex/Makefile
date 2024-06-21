LATEX=/Library/TeX/texbin/pdflatex -interaction=nonstopmode -output-directory=../livre-pdf
MAKEINDEX=/Library/TeX/texbin/makeindex

# compile MyCourse.tex
main_pdf: 
	$(LATEX) MyCourse.tex
	$(MAKEINDEX) ../livre-pdf/MyCourse.idx
	$(LATEX) MyCourse.tex
	$(LATEX) MyCourse.tex
	

# clean the directory
clean:
	rm -f ../livre-pdf/*.aux
	rm -f ../livre-pdf/*.log
	rm -f ../livre-pdf/*.out
	rm -f ../livre-pdf/*.toc
	rm -f ../livre-pdf/*.fls
	rm -f ../livre-pdf/*.fdb_latexmk
	rm -f ../livre-pdf/*.synctex.gz
	rm -f ../livre-pdf/*.bbl
	rm -f ../livre-pdf/*.blg
	rm -f ../livre-pdf/*.pdf
	rm -f ../livre-pdf/*.nav
	rm -f ../livre-pdf/*.snm
	rm -f ../livre-pdf/*.vrb
	rm -f ../livre-pdf/*.lof
	rm -f ../livre-pdf/*.lot
	rm -f ../livre-pdf/*.bcf
	rm -f ../livre-pdf/*.run.xml
	rm -f ../livre-pdf/*.blx.bib
	# clean the directory current directory
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f *.toc
	rm -f *.fls
	rm -f *.fdb_latexmk
	rm -f *.synctex.gz
	rm -f *.bbl
	rm -f *.blg
	rm -f *.pdf
	rm -f *.nav
	rm -f *.snm
	rm -f *.vrb
	rm -f *.lof
	rm -f *.lot
	rm -f *.bcf
	rm -f *.run.xml
	rm -f *.blx.bib


