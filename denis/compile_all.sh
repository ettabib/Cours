#!/bin/bash

# Directory containing the LaTeX files
LATEX_DIR="/Users/simonettabib/GitHub/Cours/denis/denis.monasse.free.fr/livre-tex"

# Loop over each LaTeX file in the directory
for tex_file in "$LATEX_DIR"/*.tex; do
    # Compile the LaTeX file
    pdflatex -output-directory="$LATEX_DIR" "$tex_file"
    echo "Compiled $tex_file"
done
