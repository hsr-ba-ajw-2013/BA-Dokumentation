\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}
\ProcessOptions

\LoadClass[a4paper]{scrreprt} % KOMAscript

% Packages:
\RequirePackage{graphicx}
\usepackage{lipsum}
\usepackage{textcomp}
\usepackage{mathptmx}
\usepackage{hyperref}
\usepackage{array}
\usepackage{ngerman}
\usepackage[toc]{glossaries}
\usepackage{color}
\usepackage[table]{xcolor}
\definecolor{lightgray}{rgb}{.9,.9,.9}
\usepackage{listings} \lstset{backgroundcolor=\color{lightgray}} \lstset{language=Java}
\usepackage{wrapfig}
\usepackage{url}
\usepackage{float}
\usepackage{natbib}
\usepackage{booktabs}
\usepackage{tabularx}
\usepackage{pdfpages}
\usepackage{fontspec}

% Figure and Table Directory one level deeper in hierarchy:
\KOMAoption{listof}{leveldown}

% Redefine the bibliography chapter title from "chapter*{...}" to "chapter{...}":
\renewcommand{\bibsection}{\chapter{\bibname}}

% Redefine the glossary chapter title from "chapter*{...}" to "chapter{...}"
\setglossarysection{chapter}
% Title of glossary translated to German
\renewcommand*{\glossaryname}{Glossar}