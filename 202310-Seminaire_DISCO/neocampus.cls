\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{neocampus}[20230830 A class for PRRI neocampus presentations]
\LoadClass[aspectratio=169]{beamer}

\usefonttheme[onlymath]{serif}
\RequirePackage[sfdefault]{carlito}
\RequirePackage{graphicx}
\RequirePackage[T1]{fontenc}
\RequirePackage[french]{babel}
\RequirePackage{wasysym}
\RequirePackage{appendixnumberbeamer}
\RequirePackage{import}

\RequirePackage{tikz}
\usetikzlibrary{babel}
\RequirePackage[babel=true, kerning=true]{microtype}

\usetikzlibrary{positioning,hobby,calc,arrows,overlay-beamer-styles}
\usetikzlibrary{spy,shadows,shapes.symbols,shapes.geometric}
\usetikzlibrary{decorations.pathreplacing}

\tikzset{%
  show curve controls/.style={
    postaction={
      decoration={
        show path construction,
        curveto code={
          \draw [blue]
            (\tikzinputsegmentfirst) -- (\tikzinputsegmentsupporta)
            (\tikzinputsegmentlast) -- (\tikzinputsegmentsupportb);
          \fill [red, opacity=0.5]
            (\tikzinputsegmentsupporta) circle [radius=.5ex]
            (\tikzinputsegmentsupportb) circle [radius=.5ex];
        }
      },
      decorate
}}}


\newcommand{\tikzmark}[1]{\tikz[baseline={(#1.base)},overlay,remember picture] \node[outer sep=0pt, inner sep=0pt] (#1) {\phantom{A}};}
\newcommand{\tikzmarktext}[2]{\tikz[baseline={(#1.base)},remember picture] \node[inner sep=1.5pt,outer sep=0pt] (#1) {#2};}

\newcommand{\autOCampus}{aut{\color{neocampus_yellow}O\!\!C}ampus}
\newcommand{\neOCampus}{ne{\color{neocampus_yellow}O\!\!C}ampus}


\def\tikz@lib@spy@parse@opt[#1]{%
    \let\tikz@spy@next=\tikz@lib@spy@parse@opta%
    \ifnum\the\catcode`\;=\active\relax
     \let\tikz@spy@next=\tikz@lib@spy@parse@opta@activesemicolon
    \fi
  \pgfutil@ifnextchar x{\tikz@spy@next[#1]}{\tikz@spy@next[#1]}%]
}
{
\catcode`\;=\active
\gdef\tikz@lib@spy@parse@opta@activesemicolon[#1]on#2in node#3;{%
  \pgfutil@g@addto@macro\tikz@lib@spy@collection{\tikz@lib@spy@do{#1}{#2}{#3}}%
}
}

\graphicspath{{./img/}{./img/logos/}{../img/}{../img/logos/}}
\beamertemplatenavigationsymbolsempty
% \logo{\includegraphics[width=3cm]{neocampus-logo.png}}
\logo{\includegraphics[width=3cm]{autocampus-logo.png}}

\definecolor{neocampus_yellow}{RGB}{255, 159, 0}
\definecolor{neocampus_bright_yellow}{RGB}{255, 207, 128}
\definecolor{neocampus_bright_grey}{RGB}{166, 166, 166}
\definecolor{neocampus_dark_grey}{RGB}{60, 65, 67}
\setbeamercolor{frametitle}{fg=neocampus_yellow}
\setbeamercolor{structure}{fg=neocampus_yellow}
\setbeamercolor{block title}{bg=neocampus_bright_yellow,fg=black}
\setbeamercolor{block body}{bg=neocampus_bright_yellow}

\setbeamerfont{structure}{series=\bfseries\boldmath}
\setbeamerfont{frametitle}{size=\LARGE,series=\bfseries}
\setbeamerfont{framesubtitle}{size=\large,series=\bfseries}

\setbeamertemplate{page number in head/foot}[appendixframenumber]

\setbeamertemplate{sidebar right}{}


\setbeamercolor{page number in head/foot}{fg=neocampus_bright_grey}
\setbeamerfont{page number in head/foot}{size=\footnotesize,series=\bfseries}
\setbeamertemplate{footline}
{
    \begin{tikzpicture}[remember picture,overlay]
    \node[anchor=south] at ([yshift=0.2cm]current page.south){\usebeamercolor[fg]{page number in head/foot}%
    \usebeamerfont{page number in head/foot}%
    \setbeamertemplate{page number in head/foot}[totalframenumber]%
    \usebeamertemplate*{page number in head/foot}};
    \node[anchor=south east] at ([yshift=0.2cm,xshift=-0.25cm]current page.south east){\insertlogo};
    \end{tikzpicture}
}


\setbeamercolor{enumerate item}{bg=white,fg=neocampus_yellow}
\setbeamertemplate{enumerate item}{\usebeamercolor[bg]{enumerate item}\tikz[baseline=-.5ex]\node[draw=neocampus_dark_grey,fill=bg,circle,outer sep=0cm,inner sep=0.05cm,minimum width=0.4cm,text=fg,line width=0.03cm] {\insertenumlabel};}
% \setbeamertemplate{enumerate item}[circle]

\setbeamertemplate{itemize item}{\raisebox{-0.07cm}{\includegraphics[width=.4cm]{item-bullet.png}}}
\setbeamertemplate{itemize subitem}{\raisebox{-0.07cm}{\includegraphics[width=.3cm]{item-bullet.png}}}
\setbeamertemplate{itemize subsubitem}{\raisebox{-0.04cm}{\includegraphics[width=.25cm]{item-bullet.png}}}

\setbeamertemplate{structure begin}{\underline{}
\setbeamertemplate{structure end}{}}

\setbeamerfont{title}{size*={30}{28},series=\bfseries}
\setbeamertemplate{title page}
{
  \centering
  \vskip1.5cm
  \includegraphics[width=0.8\textwidth]{autocampus-logo.png}
  {\usebeamerfont{title}\inserttitle\par}
  \vskip.5cm
  \begin{center}
    \insertauthor
  \end{center}
}


\defbeamertemplate*{frametitle}{new_default}[1][left]
{%
  \ifbeamercolorempty[bg]{frametitle}{}{\nointerlineskip}%
  \@tempdima=\textwidth%
  \advance\@tempdima by\beamer@leftmargin%
  \advance\@tempdima by\beamer@rightmargin%
  \begin{beamercolorbox}[sep=0.3cm,#1,wd=\the\@tempdima]{frametitle}
    \usebeamerfont{frametitle}%
    \vbox{}\vskip-1ex%
    \if@tempswa\else\csname beamer@fte#1\endcsname\fi%
    \strut\insertframetitle\par%
    {%
      \ifx\insertframesubtitle\@empty%
      \else%
      {\usebeamerfont{framesubtitle}\usebeamercolor[fg]{framesubtitle}\strut\insertframesubtitle\par}%
      \fi
    }%
    \vskip-1ex%
    \if@tempswa\else\vskip-.3cm\fi% set inside beamercolorbox... evil here...
  \end{beamercolorbox}%
  \vskip-5pt
  \hskip-20pt\tikz{\draw[draw=neocampus_bright_grey,fill=neocampus_bright_grey] (0,0) rectangle ++(1.0,0.05);}
}

\setbeamertemplate{frametitle}[new_default]
