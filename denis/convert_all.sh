#!/bin/bash

# Directory containing the HTML files
HTML_DIR="/Users/simonettabib/GitHub/Cours/denis/denis.monasse.free.fr/livre-html"
# Directory to save the converted LaTeX files
OUTPUT_DIR="/Users/simonettabib/GitHub/Cours/denis/denis.monasse.free.fr/livre-tex"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Loop over each HTML file in the directory
for html_file in "$HTML_DIR"/*.html; do
    # Check if the HTML file exists
    if [[ -f "$html_file" ]]; then
        # Get the base name of the file (without path and extension)
        base_name=$(basename "$html_file" .html)
        # Set the output LaTeX file path
        output_file="$OUTPUT_DIR/$base_name.tex"
        # Convert the HTML file to LaTeX
        python3 /Users/simonettabib/GitHub/Cours/denis/converthtml2latex.py "$html_file" "$output_file"
        echo "Converted $html_file to $output_file"
    else
        echo "File $html_file does not exist"
    fi
done
