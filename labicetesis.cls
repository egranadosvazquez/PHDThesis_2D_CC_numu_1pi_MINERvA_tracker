%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%labice tesis modificaciones
% por Alfonso Patlan Marzo 2012
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{labicetesis}[2010/09/16 v1.2 LabICE Tesis Latex Classe]

\newif\if@oneadviser	\@oneadvisertrue
\newif\if@twoadviser	\@twoadviserfalse
\newif\if@threeadviser	\@threeadviserfalse

\newif\if@bachelor		\@bachelortrue
\newif\if@master		\@masterfalse

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

\DeclareOption{oneadviser}
{
	\@oneadvisertrue
	\@twoadviserfalse
	\@threeadviserfalse
}

\DeclareOption{twoadviser}
{
	\@oneadviserfalse
	\@twoadvisertrue
	\@threeadviserfalse
}

\DeclareOption{threeadviser}
{
	\@oneadviserfalse
	\@twoadviserfalse
	\@threeadvisertrue
}

\DeclareOption{bachelor}
{
	\@bachelortrue
	\@masterfalse
}

\DeclareOption{master}
{
	\@bachelorfalse
	\@mastertrue
}

\ProcessOptions\relax

\LoadClass[11pt,letterpaper,oneside]{book}
%\usepackage{babel}
\RequirePackage[activeacute,main=english]{babel}           % Lenguaje de la plantilla.
\RequirePackage[utf8x]{inputenc}					  % UTF-8
\RequirePackage{ucs}
\RequirePackage[T1,OT1]{fontenc}                      % Fuentes de texto.
\RequirePackage{latexsym} 
\RequirePackage{amsfonts,amsmath,amssymb}             % Simbolo AMS.
\RequirePackage{graphics,graphicx,rotate,epsfig,color}% Grafica.
%\RequirePackage{bibunits}                             % Bibliografa.
\RequirePackage{multirow, array}                      % Arreglos y multirenglon.
\RequirePackage[absolute]{textpos}                    % Posicin del texto.
\RequirePackage{pstricks,pst-node,amsopn,subfigure}   % Figura flotantes.
%\RequirePackage{IEEEtrantools}                        % Herramientas IEEE.
\RequirePackage{fancyhdr}							  % Plantilla fancy.
\RequirePackage{hhline}                               % Separacin de columnas.
%\RequirePackage{hyperref}
\RequirePackage{listings}
\RequirePackage{longtable}
\RequirePackage{supertabular}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{anysize}
\RequirePackage{fullpage}
\RequirePackage{titlesec}
\RequirePackage{colortbl}
\RequirePackage{cite}
\RequirePackage{url}
\RequirePackage{minitoc}
\RequirePackage{float}
\usepackage{amsmath}
\usepackage[square,numbers]{natbib}
\usepackage{rotating}
\usepackage{forloop}
\usepackage{etoolbox}
\usepackage{colortbl}
\usepackage{xcolor}
\usepackage{pgffor}
\usepackage{makecell}
%\spanisdecimal{.}
\RequirePackage[colorlinks=true, allcolors=black]{hyperref}
\RequirePackage[fixlanguage]{babelbib}
%\selectbiblanguage{spanish}
%\usepackage{feynmp-auto}
\renewcommand{\mtctitle}{Content}

%% Some variable definitions
\newcommand{\NewVar}{NoVar}
\newcommand{\Binning}{[]}
\def\crest#1
{
	\def\@crest{#1}
}

\def\grade#1
{
	\def\@grade{#1}
}

\if@oneadviser
	\def\adviser#1
	{
		\def\@adviser{#1}
	}
\fi

\if@twoadviser
	\newcommand{\adviserone}[1]
	{
		\renewcommand{\adviserone}{#1}
	}
	
	\newcommand{\advisertwo}[1]
	{
		\renewcommand{\advisertwo}{#1}
	}

	\newcommand{\adviser}[2]
	{
		\adviserone{#1}
		\advisertwo{#2}
	}
\fi

\if@threeadviser
	\newcommand{\adviserone}[1]
	{
		\renewcommand{\adviserone}{#1}
	}
	
	\newcommand{\advisertwo}[1]
	{
		\renewcommand{\advisertwo}{#1}
	}
	
	\newcommand{\adviserthree}[1]
	{
		\renewcommand{\adviserthree}{#1}
	}

	\newcommand{\adviser}[3]
	{
		\adviserone{#1}
		\advisertwo{#2}
		\adviserthree{#3}
	}
\fi

\def\bars#1
{
	\def\@bars{#1}
}

\renewcommand{\maketitle}
{
	\thispagestyle{empty}
	\textblockorigin{0mm}{0mm}
	\pagestyle{empty}

	\begin{textblock}{6}(0.87,2.0) %0.83,2.2
		\includegraphics[scale=0.35]{\@crest}
	\end{textblock}

	\begin{textblock}{10}(4.5,2.8)
		\begin{center}
			\huge{UNIVERSIDAD DE GUANAJUATO}
		\end{center}
	\end{textblock}

	\begin{textblock}{10}(4.8,3.23)
		\begin{flushleft}
			\rule{13cm}{0.5mm}
		\end{flushleft}
	\end{textblock}

	\begin{textblock}{10}(4.8,3.3)
		\begin{flushleft}
			\rule{13cm}{1.0mm}
		\end{flushleft}
	\end{textblock}

	\begin{textblock}{10}(4.8,3.4)
		\begin{flushleft}
			\rule{13cm}{0.5mm}
		\end{flushleft}
	\end{textblock}

	\begin{textblock}{10}(4.5,3.7)
		\begin{center} 
			\Large{DIVISIÓN DE CIENCIAS E INGENIER\'IAS, CAMPUS LE\'ON}
		\end{center}
	\end{textblock}

	\begin{textblock}{9.1}(4.8,5.5)
		\begin{center} 
			\LARGE{\textit{``\@title''}}
		\end{center}
	\end{textblock}

	\begin{textblock}{12}(3.45,8.0)
		\begin{center} 
			\huge{\bf{TESIS DOCTORAL}} 
		\end{center}
	\end{textblock}

	\if@bachelor
		\begin{textblock}{12}(3.45,9.5)
			\begin{center} 
				\small{\bf{QUE PARA OBTENER EL TÍTULO DE:}} 
			\end{center}
		\end{textblock}
	\fi

	\if@master
		\begin{textblock}{12}(3.45,9.5)
			\begin{center} 
				\small{\bf{QUE PARA OBTENER EL GRADO DE:}} 
			\end{center}
		\end{textblock}
	\fi

	\begin{textblock}{12}(3.45,9.9)
		\begin{center} 
			\emph{\@grade} 
		\end{center}
	\end{textblock}

	\begin{textblock}{12}(3.6,11.1)
		\begin{center} 
			PRESENTA: 
		\end{center}
	\end{textblock}

	\begin{textblock}{12}(3.45,11.6)
		\begin{center} 
			\Large{\textit{\textbf{\@author}}} 
		\end{center}
	\end{textblock}

	\begin{textblock}{12}(3.45,13.0)
		\begin{center} 
			\if@oneadviser
				ASESOR: 
			\fi
			\if@twoadviser
				ASESORES: 
			\fi
			\if@threeadviser
				ASESORES: 
			\fi
		\end{center}
	\end{textblock}

	\if@oneadviser
		\begin{textblock}{12}(3.45,13.4)
			\begin{center} 		
				\large\textit{\@adviser}	
			\end{center}
		\end{textblock}
	\fi
	
	\if@twoadviser
		\begin{textblock}{12}(3.45,13.4)
			\begin{center} 		
				\large\textit{\adviserone}	
			\end{center}
		\end{textblock}
		\begin{textblock}{12}(3.45,13.8)
			\begin{center} 		
				\large\textit{\advisertwo}	
			\end{center}
		\end{textblock}
	\fi
	
	\if@threeadviser
		\begin{textblock}{12}(3.45,13.4)
			\begin{center} 		
				\large\textit{\adviserone}	
			\end{center}
		\end{textblock}
		\begin{textblock}{12}(3.45,13.8)
			\begin{center} 		
				\large\textit{\advisertwo}	
			\end{center}
		\end{textblock}
		\begin{textblock}{12}(3.45,14.2)
			\begin{center} 		
				\large\textit{\adviserthree}	
			\end{center}
		\end{textblock}
	\fi

	\begin{textblock}{9.5}(4.6,15.0)
		\begin{center} 
			Le\'on, GTO. \hspace{1.8in} \@date 
		\end{center}
	\end{textblock}

	\begin{textblock}{100}(1.65,5.0) %1.65,5.3
		\includegraphics[width=2.2 cm,height=19 cm]{\@bars}
	\end{textblock}

	\begin{picture}(0,0)
		\thicklines
	\end{picture}

	\newpage
}




%formato de margenes

\oddsidemargin 		= 		1.5cm  %%margen hoja par
\evensidemargin		= 		1.5cm  %%margen hoja impar
\textwidth				= 	 	14.0 cm  %%ancho del texto
\headheight 			= 		1.5cm  %% ancho del encabezado
\topmargin 				=   	0.5cm  %distancia del margen al encabezado
\textheight				= 	 	19cm % Altura del texto

\headsep            		=	 	1.5cm
\footskip					=		1.5cm	



%%%%
%%Espacios entre distancias de texto en titulos
%% \titlespacing*{\chapter} {scale}{texto sobre el titulo}{texto bajo el titulo}

\titlespacing*{\chapter} {0pt}{-45pt}{35pt}
\titlespacing*{\section} {0pt}{20pt}{15pt}
\titlespacing*{\subsection} {0pt}{15pt}{10pt}
\titlespacing*{\subsubsection} {0pt}{15pt}{10pt}

%% Espacio entre lineas
\linespread{1.2}


%formato del capitulo
\titleformat{\chapter}[display]
{\bfseries\Large\filcenter}
{\titlerule[1pt]%
\vspace{1pt}%
\titlerule
\vspace{1pc}%
\Large\MakeUppercase{\chaptertitlename} \thechapter}
{1pc}{\titlerule \vspace{1pc}\huge}



%%comando para agregar encabezados
\newcommand{\formatLabice}{ 
\fancyhf{}
%% E = even      	R = right
%% O = odd  		L = Left
%\fancyhead[ER]{\scriptsize{\bfseries\leftmark}}  %agrega el nombre de la sección
\fancyhead[L]{\scriptsize{\bfseries\rightmark}}

\fancyhead[R]{\thepage} %%agrega el nombre de la pagina

\fancyfoot[L]{\@author}
\fancyfoot[R]{Universidad de Guanajuato}

%agregan las lineas del encabezado
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}
\pagestyle{fancy}
}


\AtBeginDocument
{
	\renewcommand{\tablename}{Table}          % cambia la palabra cuadro por tabla
	\renewcommand{\listtablename}{Table index} 
	\lstset{language=C}
}