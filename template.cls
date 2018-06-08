\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}[2018/4/24]
\LoadClass[12pt,twoside]{ctexart}
% \setCJKfamilyfont{BOLD}{Microsoft YaHei}
% \setCJKfamilyfont{SONG}{Adobe Fangsong Std}
% \newcommand{\BOLD}{\CJKfamily{BOLD}}
% \newcommand{\SONG}{\CJKfamily{SONG}}
% disable indent globally
\setlength{\parindent}{2em} 
% use fontawesome
\usepackage{fancyhdr}
\usepackage{longtable,booktabs}
\usepackage[usenames, dvipsnames]{color}
\usepackage[skip=0pt,font=small]{caption}
\usepackage{booktabs}
\usepackage{subcaption}
\usepackage{amsmath}
\usepackage{enumitem}

\numberwithin{equation}{section}
\renewcommand{\thefigure}{\thesection-\arabic{figure}}
\renewcommand{\theequation}{\thesection-\arabic{equation}}
\renewcommand{\thetable}{\thesection-\arabic{table}}
\fontsize{12pt}{20.5pt}\selectfont
\linespread{1.3}\selectfont
\RequirePackage[
	a4paper,
	left=2.6cm,
	right=2.6cm,
	top=3cm,
  bottom=2.5cm,
]{geometry}
\setlength{\voffset}{0.32cm}%40 
\setlength{\headsep}{.5cm}%40 
\setlength{\textheight}{241mm} % 297-30-25

\RequirePackage{titlesec}
\usepackage{etoolbox}

\makeatletter
\patchcmd{\ttlh@hang}{\parindent\z@}{\parindent\z@\leavevmode}{}{}
\patchcmd{\ttlh@hang}{\noindent}{}{}{}
\makeatother

\RequirePackage{fancyhdr}
\fancyhead{}
\fancyhead[CO]{\fontsize{9.5pt}{18pt}\selectfont \leftmark}
\fancyhead[CE]{\fontsize{9.5pt}{18pt}\selectfont 西安交通大学本科毕业设计（论文）}
\fancyfoot{}
\fancyfoot[LE,RO]{\fontsize{9.5pt}{14pt}\selectfont \thepage}

\renewcommand{\headrulewidth}{0.4pt}

\renewcommand{\footnotesize}{\fontsize{9pt}{11pt}\selectfont}
\makeatletter %双线页眉                                        
\def\headrule{{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi%
\hrule\@height 0.5pt \@width\headwidth\vskip .75pt%上面线为0.5pt粗  
\hrule\@height 0.5pt\@width\headwidth  %下面0.5pt粗            
\vskip-2\headrulewidth\vskip-0.5pt}      %两条线的距离0.5pt        
 \vspace{0.5cm}}     %双线与下面正文之间的垂直间距              
\makeatother   
\pagestyle{fancy}

% Circled footnote number
% http://tex.stackexchange.com/questions/133264/circled-footnote-symbols-with-pifont-showing-arrows-instead-of-circled-numbers
\usepackage{tikz}
\newcommand*\circled[1]{
    \tikz[baseline=(char.base)]
    \node[shape=circle,draw,inner sep=0.5pt,minimum size=5pt] (char) {#1};
}
\renewcommand\thefootnote{\protect\circled{\arabic{footnote}}}
\setlength{\footnotesep}{.5\baselineskip}
\renewcommand{\footnoterule}{%
  \kern -3pt
  \hrule width 0.25\paperwidth height 0.5pt
  \kern 2pt
}
\titleformat{\section}[display]{\Large\center}{}{1.25em}{\vspace{-1.55em}}[]

% \titleformat{\section}         % Customise the \section command 
%   {\Large\scshape\center} % Make the \section headers large (\Large),
%                                % small capitals (\scshape) and left aligned (\raggedright)
%   {\thesection}{1em}                      % Can be used to give a prefix to all sections, like 'Section ...'
%   {}
%   {}                           % Can be used to insert code before the heading
  
\titleformat{\subsection}
  {\large\raggedright\scshape}
  {\thesubsection}{.3em}
  {}
  {}
\titlespacing{\subsubsection}{2em}{*1.8}{0\baselineskip}

\titleformat{\subsubsection}
  {\normalsize\scshape}
  {\thesubsubsection}{.3em}
  {}
  {}

% \titlespacing{\section}{0cm}{*1.8}{*1.8}
% \titlespacing{\section}{0em}{1\baselineskip}{1\baselineskip}
% \renewcommand{\thesection}{\arabic{section}}
\titleformat{\paragraph}
{\normalsize\scshape}
{\arabic{paragraph}）}{0em}
{}

\titlespacing{\paragraph}{2em}{0\baselineskip}{0\baselineskip}

\titlespacing{\subsection}{0cm}{1\baselineskip}{.5\baselineskip}

% \renewcommand{\subsection}{\arabic{section}.\arabic{subsection} }
% \renewcommand{\subsubsection}{\arabic{subsubsection}.}

\makeatletter
\def\toprule{%
  \noalign{\ifnum0=`}\fi\hrule \@height \thickarrayrulewidth \futurelet
   \reserved@a\@xthickhline}
\def\@xthickhline{\ifx\reserved@a\thickhline
               \vskip\doublerulesep
               \vskip-\thickarrayrulewidth
             \fi
      \ifnum0=`{\fi}}
\makeatother

\makeatletter

\makeatletter
\def\bottomrule{%
  \noalign{\ifnum0=`}\fi\hrule \@height \thickarrayrulewidth \futurelet
   \reserved@a\@xthickhline}
\def\@xthickhline{\ifx\reserved@a\thickhline
               \vskip\doublerulesep
               \vskip-\thickarrayrulewidth
             \fi
      \ifnum0=`{\fi}}
\makeatother
\newlength{\thickarrayrulewidth}
\setlength{\thickarrayrulewidth}{1.5pt}

\let\oldtable=\table
\renewcommand\table[1][]{
    \small    
    \renewcommand{\arraystretch}{1.0}
    % \setlength{\belowcaptionskip}{-10pt}  
    % \setlength{\abovecaptionskip}{-10pt} 
    \oldtable[#1]
}

\let\oldfigure=\figure
\renewcommand\figure[1][]{
    \small    
    \renewcommand{\arraystretch}{1.0}
    % \setlength{\belowcaptionskip}{-10pt}  
    % \setlength{\abovecaptionskip}{-10pt} 
    \oldfigure[#1]
}

\setcounter{secnumdepth}{4}

\newlength\mystoreparindent
\newenvironment{myparindent}[1]{%
\setlength{\mystoreparindent}{\the\parindent}
\setlength{\parindent}{#1}
}{%
\setlength{\parindent}{\mystoreparindent}
}

\setlength{\intextsep}{8pt}


\usepackage[square,sectionbib]{natbib}