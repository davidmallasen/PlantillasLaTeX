\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{apuntes}[31/01/2019 Clase para apuntes]

\LoadClass[a4paper, 11pt, final]{book}

%Poder escribir acentos directamente:
\RequirePackage[utf8]{inputenc}
%LaTeX sepa que el texto está en español:
\RequirePackage[spanish, es-tabla]{babel}
%Quitar la sangría de principio de párrafo
\setlength{\parindent}{0pt}

%Definir tamaños de página y márgenes
\RequirePackage{geometry}
\geometry{
	a4paper,
	left=3.00cm,
	right=3.00cm,
	top=2.50cm,
	bottom=2.50cm
}

%Hipervinculos
\RequirePackage{hyperref}

%Paquete matemático custom
\RequirePackage{dmath}