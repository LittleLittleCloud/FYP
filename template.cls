\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}[2018/4/24]
\LoadClass{ctexart}


\setCJKfamilyfont{BOLD}{Microsoft YaHei}
\setCJKfamilyfont{SONG}{Adobe Fangsong Std}
\newcommand{\BOLD}{\CJKfamily{BOLD}}
\newcommand{\SONG}{\CJKfamily{SONG}}
% disable indent globally
\setlength{\parindent}{2em} 
% use fontawesome


\usepackage[usenames, dvipsnames]{color}
\definecolor{mygray}{gray}{0.6}
\RequirePackage[
	a4paper,
	left=2.6cm,
	right=2.6cm,
	top=3cm,
	bottom=2.5cm,
]{geometry}

\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\fancyhead[CH]{\textcolor{mygray} \leftmark}
\fancyfoot{}
\fancyfoot[LE,RO]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}
\RequirePackage{fontawesome}
% set baselinestretch
\renewcommand{\baselinestretch}{1.3}    
% \renewcommand{\thesection}{\arabic{section}.}


\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\center} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {\thesection}{1em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  {}                 % Inserts a horizontal line after the heading
% \titlespacing*{\section}{0cm}{*1.8}{*1.8}

\titleformat{\subsection}
  {\large\raggedright}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{*1.8}{*0.6}


