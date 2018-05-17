\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}[2018/4/24]
\LoadClass[12pt]{ctexart}
\setCJKfamilyfont{BOLD}{Microsoft YaHei}
% \setCJKfamilyfont{SONG}{Adobe Fangsong Std}
\newcommand{\BOLD}{\CJKfamily{BOLD}}
% \newcommand{\SONG}{\CJKfamily{SONG}}
% disable indent globally
\setlength{\parindent}{2em} 
% use fontawesome
\usepackage{fancyhdr}

\usepackage{longtable,booktabs}
\usepackage[usenames, dvipsnames]{color}
\usepackage{caption}
\usepackage{booktabs}
\usepackage{subcaption}
\usepackage{amsmath}
\numberwithin{equation}{section}
\renewcommand{\thefigure}{\thesection-\arabic{figure}}
\renewcommand{\theequation}{\thesection-\arabic{equation}}
\renewcommand{\thetable}{\thesection-\arabic{table}}
\fontsize{12pt}{18pt}\selectfont

\definecolor{mygray}{gray}{0.6}
\RequirePackage[
	a4paper,
	left=2.6cm,
	right=2.6cm,
	top=3cm,
	bottom=2.5cm,
]{geometry}

\RequirePackage{titlesec}
\usepackage{etoolbox}

\makeatletter
\patchcmd{\ttlh@hang}{\parindent\z@}{\parindent\z@\leavevmode}{}{}
\patchcmd{\ttlh@hang}{\noindent}{}{}{}
\makeatother

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\fancyhead[CH]{\small\leftmark}
\fancyfoot{}
\fancyfoot[LE,RO]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}

\renewcommand{\footnotesize}{\fontsize{9pt}{11pt}\selectfont}
% Circled footnote number
% http://tex.stackexchange.com/questions/133264/circled-footnote-symbols-with-pifont-showing-arrows-instead-of-circled-numbers
\usepackage{tikz}
\newcommand*\circled[1]{
    \tikz[baseline=(char.base)]
    \node[shape=circle,draw,inner sep=0.5pt,minimum size=8pt] (char) {#1};
}
\renewcommand\thefootnote{\protect\circled{\arabic{footnote}}}
\renewcommand{\footnoterule}{%
  \kern -3pt
  \hrule width 0.25\paperwidth height 0.5pt
  \kern 2pt
}


\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\center} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {\thesection}{1em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  {}                 % Inserts a horizontal line after the heading
  
\titleformat{\subsection}
  {\large\raggedright\scshape}
  {\thesubsection}{1em}
  {}
  {}
\titlespacing{\subsubsection}{2em}{*1.8}{*0.6}

\titleformat{\subsubsection}
  {\normalsize\scshape}
  {\thesubsubsection}{1em}
  {}
  {}

\titlespacing{\section}{0cm}{*1.8}{*1.8}
% \renewcommand{\thesection}{\arabic{section}}


\titlespacing{\subsection}{0cm}{*1.8}{*0.6}

% \renewcommand{\subsection}{\arabic{section}.\arabic{subsection} }
% \renewcommand{\subsubsection}{\arabic{subsubsection}.}


