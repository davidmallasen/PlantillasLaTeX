%% presentacionUCM
%% https://github.com/davidmallasen/PlantillasLaTeX
%
% MIT License
% Copyright (c) 2023 David Mallasén Quintana
%
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
%
% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.

% Note: Look at the Footer section below and the comment:
% CHANGE THIS NUMBER TO THE NUMBER OF SECTIONS IN YOUR PRESENTATION!!!! NO WORKAROUND SO FAR :(



\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{presentacionUCM}[27/04/23 Plantilla para presentaciones en la UCM]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Beamer class
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Pass options from the outside to the beamer class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

\LoadClass[]{beamer}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Beamer theme
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usetheme{Madrid}

% Set theme color
\definecolor{aggiemaroon}{RGB}{153,0,51} 
\usecolortheme[named=aggiemaroon]{structure}

% Remove beamer navigation symbols
\setbeamertemplate{navigation symbols}{}

% Set beamer font
\setbeamerfont{structure}{family=\rmfamily,series=\bfseries}
\usefonttheme[stillsansseriftext]{serif}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsmath}
\RequirePackage{caption}
\RequirePackage{comment}
\RequirePackage[spanish]{babel}

\RequirePackage{graphicx}
% Set graphicx default path
\graphicspath{ {img/} }

\RequirePackage{rotating}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{multicol}
\RequirePackage{hyperref}
\RequirePackage{enumerate}
\RequirePackage{algorithmic}
\RequirePackage{tikz}
\usetikzlibrary{shapes}

% Font
\usefonttheme{professionalfonts}
\usefonttheme{serif}
\RequirePackage{fontspec}
\setmainfont[
Path=font/,
BoldFont=1.ttf,
ItalicFont=2.ttf,
BoldItalicFont=3.ttf,
]{4.ttf}
\RequirePackage{bm}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom environments
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment<>{greenblock}[1]{%
  \setbeamercolor{block title}{fg=white,bg=Green!75!black}%
  \begin{block}#2{#1}}{\end{block}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Footer
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setbeamercolor{section in head/foot}{fg=aggiemaroon, bg=white}
\setbeamercolor{upper separation line head}{bg=aggiemaroon}

\makeatletter
\setbeamertemplate{footline}{
	\leavevmode%
    \hbox{%
        \begin{beamercolorbox}[wd=\paperwidth,ht=0.4ex]{upper separation line head}%
        \end{beamercolorbox}
    }%
    \newline
    \hbox{%
        \begin{beamercolorbox}[wd=\paperwidth,ht=4.7ex,dp=0.1ex]{section in head/foot}%
            \insertsectionnavigationhorizontal{\paperwidth}{\hskip0pt plus1filll}{\hskip0pt plus1filll}
        \end{beamercolorbox}%
    }%
    \newline
	\hbox{%
		\begin{beamercolorbox}[wd=.25\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
			\usebeamerfont{author in head/foot}\insertshortauthor\expandafter\ifblank\expandafter{\beamer@shortinstitute}{}{~~(\insertshortinstitute)}
		\end{beamercolorbox}%
		\begin{beamercolorbox}[wd=.55\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}%
			\usebeamerfont{title in head/foot}\insertshorttitle
		\end{beamercolorbox}%
		\begin{beamercolorbox}[wd=.20\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
			\usebeamerfont{date in head/foot}\insertshortdate{}\hspace*{2em}\hfill
			\insertframenumber{} \hspace*{2ex} 
        \end{beamercolorbox}%
    }%
	\vskip0pt%
}

\setbeamertemplate{section in head/foot}{%
    \if\insertsectionheadnumber1
        \tikz\node[draw=aggiemaroon,fill=aggiemaroon,shape=signal,very thick,text=white,minimum height=1.75em]{\insertsectionhead\hskip.3cm};
    \else\if\insertsectionheadnumber5 % CHANGE THIS NUMBER TO THE NUMBER OF SECTIONS IN YOUR PRESENTATION!!!! NO WORKAROUND SO FAR :(
        \tikz\node[draw=aggiemaroon,fill=aggiemaroon,shape=signal,signal from=west, signal to=nowhere, very thick,text=white,minimum height=1.75em]     {\insertsectionhead\hskip.3cm};
    \else
        \tikz\node[draw=aggiemaroon,fill=aggiemaroon,shape=signal,signal from=west, signal to=east,very thick,text=white,minimum height=1.75em]     {\insertsectionhead\hskip.3cm};
    \fi
    \fi
}

\setbeamertemplate{section in head/foot shaded}{%
    \if\insertsectionheadnumber1
        \tikz\node[draw=aggiemaroon,fill=white,shape=signal,very thick,text=aggiemaroon,minimum height=1.75em]{\insertsectionhead\hskip.3cm};
    \else\if\insertsectionheadnumber5 % CHANGE THIS NUMBER TO THE NUMBER OF SECTIONS IN YOUR PRESENTATION!!!! NO WORKAROUND SO FAR :(
        \tikz\node[draw=aggiemaroon,fill=white,shape=signal,signal from=west, signal to=nowhere, very thick,text=aggiemaroon,minimum height=1.75em]     {\insertsectionhead\hskip.3cm};
    \else
        \tikz\node[draw=aggiemaroon,fill=white,shape=signal,signal from=west, signal to=east,very thick,text=aggiemaroon,minimum height=1.75em]     {\insertsectionhead\hskip.3cm};
    \fi
    \fi
}

\makeatother