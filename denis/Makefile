# Variables
TEX_DIR = /Users/simonettabib/GitHub/Cours/denis/denis.monasse.free.fr/livre-tex
PDF_DIR = /Users/simonettabib/GitHub/Cours/denis/denis.monasse.free.fr/livre-pdf
MAIN_TEX = $(TEX_DIR)/Mycourse.tex
OUTPUT_PDF = $(TEX_DIR)/Mycourse.pdf
OUTPUT_NAME = Mycourse

# Commandes
LATEXMK = latexmk
LATEXMK_OPTS = -pdf -output-directory=$(PDF_DIR) -jobname=$(OUTPUT_NAME)

# Règles
all: $(OUTPUT_PDF)

$(OUTPUT_PDF): $(MAIN_TEX) $(TEX_FILES)
	@mkdir -p $(PDF_DIR)
	@cd $(TEX_DIR) && $(LATEXMK)  $(MAIN_TEX)

clean:
	@rm -f $(OUTPUT_PDF)
	@rm -f $(PDF_DIR)/*.aux
	@rm -f $(PDF_DIR)/*.log
	@rm -f $(PDF_DIR)/*.out
	@rm -f $(PDF_DIR)/*.toc
	@rm -f $(PDF_DIR)/*.fls
	@rm -f $(PDF_DIR)/*.fdb_latexmk
	@rm -f $(PDF_DIR)/*.synctex.gz
	@rm -f $(PDF_DIR)/*.bbl
	@rm -f $(PDF_DIR)/*.blg
	@rm -f $(OUTPUT_PDF)

.PHONY: all clean
