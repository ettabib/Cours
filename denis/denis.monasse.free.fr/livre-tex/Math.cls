\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{Math}[2013/03/13 Classe personnelle Math Ettabib Mohammed, V1.0]

% Classe de base
\LoadClass[a4paper, 12pt]{article}

% Extensions pour les mathématiques
\RequirePackage{amsmath, amsfonts, amssymb, mathtools, latexsym}

% Extensions pour les graphiques
\RequirePackage{graphicx, epsfig, subfigure, color, fancyhdr, lastpage}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{float}
\floatstyle{boxed}
\restylefloat{figure}

% Encodage
\RequirePackage[utf8]{inputenc}

% Extensions diverses
\RequirePackage[toc,page]{appendix}
%\RequirePackage[french]{babel}
\RequirePackage[english]{babel}
\RequirePackage{listings}
\RequirePackage{titlesec}
\RequirePackage{eurosym}
\RequirePackage{dsfont}
\RequirePackage{makeidx}
\RequirePackage{tabularx}
\RequirePackage{pifont}
\RequirePackage{enumitem}
\RequirePackage{enumerate}
\RequirePackage{thmbox}

% Hyperliens
\RequirePackage[pdftex, hyperindex, bookmarks, bookmarksnumbered, bookmarksopenlevel=2]{hyperref}

% Commandes personnelles
\newcommand{\sauta}{\vspace{1cm}}
\newcommand{\sautb}{\vspace{2cm}}
\addto{\captionsenglish}{\renewcommand{\abstractname}{Executive Summary}}

\newenvironment{MYitemize}{%
    \renewcommand{\labelitemi}{\textbullet}%
    \begin{itemize}}{\end{itemize}}

% Couleurs personnalisées
\xdefinecolor{magenta}{named}{Magenta}
\xdefinecolor{redorange}{named}{RedOrange}
\newcommand{\blue}[1]{\textcolor{blue}{#1}}
\newcommand{\red}[1]{\textcolor{red}{#1}}
\newcommand{\green}[1]{\textcolor{green}{#1}}
\newcommand{\magenta}[1]{\textcolor{magenta}{#1}}
\newcommand{\ygreen}[1]{\textcolor{yellowgreen}{#1}}
\newcommand{\org}[1]{\textcolor{orange}{#1}}
\newcommand{\rorg}[1]{\textcolor{redorange}{#1}}
\newcommand{\ogreen}[1]{\textcolor{olivegreen}{#1}}
\newcommand{\fgreen}[1]{\textcolor{ForestGreen}{#1}}
\newcommand{\brown}[1]{\textcolor{brown}{#1}}
\newcommand{\wsb}[1]{\textcolor{WildStrawberry}{#1}}

% Personnalisation des titres
\titleformat{\section}{\normalfont\Large\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\normalfont\large\bfseries}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\normalfont\normalsize\bfseries}{\thesubsubsection}{1em}{}

% Environnements pour les théorèmes et autres
\newtheorem[M]{de}{\wsb{Definition}}[section]
\newtheorem[L]{thm}{\red{Theorem}}[section]
\newtheorem[M]{prop}{\rorg{Proposition}}[section]
\newtheorem[S]{lem}{\fgreen{Lemma}}[section]
\newtheorem[S]{rem}{\fgreen{Remark}}[section]

% Commandes de mise en page
\lstset{
  literate=
  {À}{{\`A}}1 {Â}{{\^A}}1 {Ç}{{\c{C}}}1%
  {à}{{\`a}}1 {â}{{\^a}}1 {ç}{{\c{c}}}1%
  {É}{{\'E}}1 {È}{{\`E}}1 {Ê}{{\^E}}1 {Ë}{{\"E}}1%
  {é}{{\'e}}1 {è}{{\`e}}1 {ê}{{\^e}}1 {ë}{{\"e}}1%
  {Ï}{{\"I}}1 {Î}{{\^I}}1 {Ô}{{\^O}}1%
  {ï}{{\"i}}1 {î}{{\^i}}1 {ô}{{\^o}}1%
  {Ù}{{\`U}}1 {Û}{{\^U}}1 {Ü}{{\"U}}1%
  {ù}{{\`u}}1 {û}{{\^u}}1 {ü}{{\"u}}1%
}

\newcommand{\saut}{\vspace*{5mm}\par}
\def\<{{\guillemotleft}}
\def\>{{\guillemotright}}

\def\ligne#1{\leaders\hrule height #1\linethickness \hfill}
\numberwithin{equation}{section}

% Dimensions de la page
\setlength{\parindent}{0pt}
\setlength{\parskip}{1ex}
\setlength{\textwidth}{17cm}
\setlength{\textheight}{24cm}
\setlength{\oddsidemargin}{-.7cm}
\setlength{\evensidemargin}{-.7cm}
\setlength{\topmargin}{-.5in}

\pagestyle{fancyplain}
\renewcommand{\headrulewidth}{0pt}
\addtolength{\headheight}{4.2pt}

\lfoot{ }
\cfoot{ }
\rfoot{\footnotesize\sf page~\thepage/\pageref{LastPage}}
