# Variables
TEX_DIR = /Users/simonettabib/GitHub/Cours/denis/denis.monasse.free.fr/livre-tex
PDF_DIR = /Users/simonettabib/GitHub/Cours/denis/denis.monasse.free.fr/livre-pdf
TEX_FILES = $(wildcard $(TEX_DIR)/*.tex)
PDF_FILES = $(TEX_FILES:.tex=.pdf)

# Commandes
LATEXMK = latexmk
LATEXMK_OPTS = -pdf -output-directory=$(PDF_DIR)

# Règles
all: $(PDF_FILES)

$(TEX_DIR)/%.pdf: $(TEX_DIR)/%.tex
	@mkdir -p $(PDF_DIR)
	$(LATEXMK) $(LATEXMK_OPTS) $<

clean:
	$(LATEXMK) -C
	@rm -f $(PDF_FILES)

.PHONY: all clean
