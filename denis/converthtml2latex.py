from bs4 import BeautifulSoup
import sys
import os

def convert_html_to_latex(input_file, output_file):
    with open(input_file, 'r', encoding='iso-8859-1') as html_file:
        soup = BeautifulSoup(html_file, 'html.parser')

        # Extraire la table des matières
        toc = soup.find('div', class_='tableofcontents')
        if toc:
            toc_content = toc.get_text(separator="\n")
        else:
            toc_content = ""

        # Ajouter la structure LaTeX nécessaire
        latex_content = add_latex_structure(toc_content)
        
        with open(output_file, 'w', encoding='utf-8') as latex_file:
            latex_file.write(latex_content)

def add_latex_structure(content):
    # Structure de base d'un document LaTeX
    preamble = (
        "\\documentclass{article}\n"
        "\\usepackage[utf8]{inputenc}\n"
        "\\usepackage{amsmath}\n"
        "\\usepackage{graphicx}\n"
        "\\title{Titre du Document}\n"
        "\\author{Auteur}\n"
        "\\date{\\today}\n\n"
    )
    begin_doc = "\\begin{document}\n\\maketitle\n\n"
    end_doc = "\n\\end{document}\n"

    # Combiner les parties pour former le document complet
    full_content = preamble + begin_doc + content + end_doc

    return full_content

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python converthtml2latex.py <input_html> <output_latex>")
    else:
        input_html = sys.argv[1]
        output_latex = sys.argv[2]
        convert_html_to_latex(input_html, output_latex)
