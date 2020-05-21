\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{articulo}[21/05/20 Clase para articulos]

\LoadClass[a4paper, 12pt]{article}

%Poder escribir acentos directamente:
\RequirePackage[utf8]{inputenc}
%LaTeX sepa que el texto está en español:
\RequirePackage[spanish, es-tabla]{babel}
%Quitar la sangría de principio de párrafo
%\setlength{\parindent}{0pt}

%Definir tamaños de página y márgenes
\RequirePackage{geometry}
\geometry{
	a4paper,
	left=3.00cm,
	right=3.00cm,
	top=4.00cm,
	bottom=4.00cm
}

%Referencias
\RequirePackage[style=alphabetic, sorting=nyt]{biblatex}

%Comentarios
\RequirePackage{comment}

%Pseudocódigo
\RequirePackage[spanish,onelanguage,ruled,lined,linesnumbered,commentsnumbered]{algorithm2e}
\RequirePackage{xcolor}
\newcommand\mycommfont[1]{\small\ttfamily\textcolor{teal}{#1}}
\SetCommentSty{mycommfont}

%Paquete matemático custom
\RequirePackage{dmath}

%Para añadir imagenes
\RequirePackage{graphicx}
\graphicspath{ {img/} }

\RequirePackage{subcaption}

%Tablas
\RequirePackage{multirow}

% Paquetes varios
\RequirePackage{eurosym} % Símbolo del euro

%Hipervinculos
\RequirePackage{hyperref}
\hypersetup{
	colorlinks=true,
	linkcolor=blue,
	citecolor=teal,
	linktocpage,
}
