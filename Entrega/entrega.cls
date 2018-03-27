\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{entrega}[27/03/18 Clase para entregas]

\LoadClass[a4paper, 11pt]{report}

%Poder escribir acentos directamente:
\RequirePackage[utf8]{inputenc}
%LaTeX sepa que el texto está en español:
\RequirePackage[spanish, es-tabla]{babel}

%Paquetes varios
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{amsmath}
\RequirePackage{geometry}
\geometry{
	a4paper,
	left=3.00cm,
	right=3.00cm,
	top=2.50cm,
	bottom=2.50cm
}

%Formato de página
\setlength{\headheight}{15pt}
\lhead{\@author}\chead{\@title}\rhead{\@date}
\lfoot{}\cfoot{\thepage}\rfoot{}
\pagestyle{fancy}

%Contador
\newcounter{ProblemNum}
\renewcommand{\theProblemNum}{\arabic{ProblemNum}}

%Problema y solución
\newcommand*{\anyproblem}[1]{\subsection*{#1}}
\newcommand*{\problem}[1]{\stepcounter{ProblemNum} %
	\anyproblem{Problema \theProblemNum. \; #1}}

\newcommand*{\soln}[1]{\subsubsection*{#1}}
\newcommand*{\solution}{\soln{Solución:}}

%Enumerate para problemas
\newenvironment{enumproblem}{\begin{enumerate}[label=\upshape\bfseries (\alph*)]}{\end{enumerate}}