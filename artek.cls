\LoadClass[a4paper,11pt]{report}
\RequirePackage{CJK} 
\RequirePackage[colorlinks,linkcolor=blue,anchorcolor=blue,citecolor=blue,CJKbookmarks]{hyperref} 
\RequirePackage[svgnames]{xcolor}
\RequirePackage{verbatim}
\RequirePackage[pdftex]{graphicx}
\RequirePackage[top=1.5in, bottom=1.5in, left=1in, right=1in]{geometry}
\RequirePackage{tocloft}
\RequirePackage{minibox}

\setlength{\headsep}{0.5in}


\RequirePackage{tikz}

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
\definecolor{head1}{RGB}{88,122,210}
\definecolor{head2}{RGB}{200, 240, 240}
\linespread{1.6}


\RequirePackage{kpfonts}
\RequirePackage[explicit]{titlesec}
\newcommand*\chapterlabel{}
\titleformat{\chapter}
  {\gdef\chapterlabel{}
   \normalfont\sffamily\Huge\bfseries\scshape}
  {\gdef\chapterlabel{\thechapter\ }}{0pt}
  {\begin{tikzpicture}[remember picture,overlay]
    \node[yshift=-3cm] at (current page.north west)
      {\begin{tikzpicture}[remember picture, overlay]
        \draw[fill=LightSkyBlue] (0,0) rectangle
          (\paperwidth,3cm);
        \node[anchor=east,xshift=.9\paperwidth,rectangle,
              rounded corners=20pt,inner sep=11pt,
              fill=MidnightBlue]
              {\color{white}\chapterlabel#1};
       \end{tikzpicture}
      };
   \end{tikzpicture}
  }
\titlespacing*{\chapter}{0pt}{50pt}{-60pt}

%\RequirePackage{setspace}
%\usepackage{tikz}

%\usepackage[usenames,dvipsnames]{xcolor}




\makeatletter
\def\section{\@ifstar\unnumberedsection\numberedsection}
\def\numberedsection{\@ifnextchar[%]
  \numberedsectionwithtwoarguments\numberedsectionwithoneargument}
\def\unnumberedsection{\@ifnextchar[%]
  \unnumberedsectionwithtwoarguments\unnumberedsectionwithoneargument}
\def\numberedsectionwithoneargument#1{\numberedsectionwithtwoarguments[#1]{#1}}
\def\unnumberedsectionwithoneargument#1{\unnumberedsectionwithtwoarguments[#1]{#1}}
\def\numberedsectionwithtwoarguments[#1]#2{%
  \ifhmode\par\fi
  \removelastskip
  \vskip 3ex\goodbreak
  \refstepcounter{section}%
  \hbox to \hsize{%
    \colorbox{LightSkyBlue}{%
      \hbox to 1cm{\hss\bfseries\Large\thesection.\ }%
      \vtop{%
        \advance \hsize by -1cm
        \advance \hsize by -2\fboxrule
        \advance \hsize by -2\fboxsep
        \parindent=0pt
        \leavevmode\raggedright\bfseries\Large
        #2
        }%
      }}\nobreak
  \vskip 2mm\nobreak
  \addcontentsline{toc}{section}{%
    \protect\numberline{\thesection}%
    #1}%
  \ignorespaces
  }
\def\unnumberedsectionwithtwoarguments[#1]#2{%
  \ifhmode\par\fi
  \removelastskip
  \vskip 5mm\goodbreak
%  \refstepcounter{section}%
  \hbox to \hsize{%
    \colorbox{LightSkyBlue}{%
      \vtop{%
%        \advance \hsize by -1cm
        \advance \hsize by -2\fboxrule
%        \advance \hsize by -2\fboxsep
        \parindent= 5mm
        \leavevmode\raggedright\bfseries\Large
	\raisebox{2pt}{\strut}%
        \raisebox{-2pt}{\strut}%
        #2
        }%
      }}\nobreak
  \vskip 5mm\nobreak
%  \addcontentsline{toc}{section}{%
%    \protect\numberline{\thesection}%
%    #1}%
  \ignorespaces
  }


\def\@maketitle{%
  \newpage
  \null
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE \bfseries \@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
%    \vskip 1em%
%    {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\makeatother
