%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Autor: Studienzentrum Mathematik der Universität Bremen, Germany
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{thesis}

\newcommand{\@language}{ngerman}
\DeclareOption{english}{\renewcommand{\@language}{english}}

% Pass all other options to the scrreprt class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ProcessOptions\relax
\LoadClass[11pt,a4paper,twoside,open=right,\@language,listof=totoc,bibliography=totoc]{scrbook}
\let\tmptitle\titlepage
\newcommand{\@email}{\empty}
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}
%Titelseite
% 1: Studiengang (Mathematik oder Industriemathematik) 
% 2: Gutachter:in 1
% 3: Gutachter:in 2
% 4: Semester der Abgabe
\renewcommand{\titlepage}[4]{%
  
  \begin{tmptitle}
    \newgeometry{rmargin=1in, lmargin=1in}
    \begin{tikzpicture}[remember picture,overlay,shift={(current page.north west)}]
      \node[anchor=north west,xshift=11.4mm,yshift=-11.4mm]{\includegraphics[height=18.5mm]{UHB_Logo_4c.eps}};
    \end{tikzpicture}
    
    \vspace*{.5cm}
    %Unterscheidung zwischen Englisch und Deutsch
    \IfSubStr{\@language}{german}{{
      \centering
      \vspace*{1cm}
      % Title and subtitle are enclosed between two rules.
      \rule{\textwidth}{1pt}
      
      % Title
      \vspace{.8\baselineskip}
      
      {\huge \textbf{\@title}}

      \vspace{.8cm}
      % Subtitle
      \vspace{.8cm}

      \IfSubStr{#1}{Vollfach}{{\LARGE Bachelorarbeit zur Erlangung des akademischen Grades\\[1ex]
        Bachelor of Science (B.Sc.) Mathematik}}\par
      \IfSubStr{#1}{Industrie}{{\LARGE Bachelorarbeit zur Erlangung des akademischen Grades\\[1ex]
        Bachelor of Science Industriemathematik}}\par
      
      \rule{\textwidth}{1pt}
      
      \vspace{2cm}
      
      % Set this size for the remaining titlepage.
      \large
      
      \begin{minipage}{\textwidth}
          \centering
          \textbf{Eingereicht von}\\[1ex]

          \@author \\[1ex]
          {\normalsize \url{\@email}}
      \end{minipage}%
      \vspace{1cm}
      \begin{minipage}{\textwidth}
          \centering
          \textbf{Gutachter:innen}\\
          #2 \\
          #3
      \end{minipage}
      \vfill
      % University and date information at the bottom of the titlepage.
      Fachbereich 3 \\
      Universität Bremen \\
      #4 \\
      \@date\\
    }}
    {{
      \centering
      \vspace*{1cm}
      % Title and subtitle are enclosed between two rules.
      \rule{\textwidth}{1pt}
      
      % Title
      \vspace{.8\baselineskip}
      
      {\huge \textbf{\@title} }

      \vspace{.8cm}
      % Subtitle

      \IfSubStr{#1}{Vollfach}{{\LARGE Bachelor thesis  for the award of the academic degree
      Bachelor of Science Mathematics}}\par
      \IfSubStr{#1}{Industrie}{{\LARGE Bachelor thesis for the award of the academic degree
      Bachelor of Science Industrial Mathematics}}\par
      
      
      \rule{\textwidth}{1pt}
      
      \vspace{2cm}
      
      % Set this size for the remaining titlepage.
      \large
      
      \begin{minipage}{\textwidth}
          \centering
          \textbf{Submitted by}\\[1ex]
          \@author \\[1ex]
          {\normalsize\url{\@email}}
      \end{minipage}%
      \vspace{1cm}
      \begin{minipage}{\textwidth}
          \centering
          \textbf{Supervisor}\\
          #2 \\
          #3
      \end{minipage}
      \vfill
      % University and date information at the bottom of the titlepage.
      Faculty 3 \\
      University of  Bremen \\
      #4 \\
      \@date\\
    }}
    \restoregeometry
  \end{tmptitle}
  % \newpage
  \thispagestyle{empty}
  \mbox{}
}

%Packages, die ich ganz sinnvoll finde
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{bbold}
\RequirePackage[utf8]{inputenc}
\RequirePackage{amsfonts}
\RequirePackage{enumerate}
\RequirePackage{mathtools}
\RequirePackage[\@language]{babel}
\RequirePackage{xparse}
\RequirePackage{graphicx}
\RequirePackage{amsthm}
\RequirePackage{pdfpages}
\RequirePackage{color}
\RequirePackage{gensymb}
\RequirePackage{newunicodechar}
\graphicspath{{./images/}} 
\RequirePackage[center]{caption}
\RequirePackage[normalem]{ulem}
\RequirePackage{booktabs} 
\RequirePackage{subfig} 
\RequirePackage{float}
\RequirePackage{xpatch}
\RequirePackage{xstring}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{soul}
\RequirePackage{mathrsfs}
\RequirePackage{mwe}
\RequirePackage{tikz}
\RequirePackage{tikz}
    \usetikzlibrary{matrix}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{geometry}
\hypersetup{
    colorlinks=false,
    pdfpagemode=FullScreen,
    }
\RequirePackage{mathtools}
\RequirePackage{xfrac}
\RequirePackage{csquotes}
\RequirePackage{tkz-euclide}
\RequirePackage{easytable}
\RequirePackage{array}
\RequirePackage[onehalfspacing]{setspace}
\RequirePackage[style=rwtmath, dashed=true]{biblatex}
\RequirePackage{scrlayer-scrpage}
\pagestyle{plain.scrheadings}
% \DeclareNameAlias{default}{last-first}

\RequirePackage{subfiles}
% Kein Einschub
\setlength{\parindent}{0em}


%Grundlegende Mathecommands
\newcommand{\KK}{\mathbb{K}}
\newcommand{\ZZ}{\mathbb{Z}}
\newcommand{\QQ}{\mathbb{Q}}
\newcommand{\RR}{\mathbb{R}}
\newcommand{\NN}{\mathbb{N}}
\newcommand{\CC}{\mathbb{C}}
\newcommand{\FF}{\mathbb{F}}
\newcommand{\HH}{\mathbb{H}}


\AtBeginDocument{%
  \IfStrEq{\@language}{english}{
    \theoremstyle{definition}
    \newtheorem{theorem}{Theorem}[chapter]
    \newtheorem{corollary}[theorem]{Corollary}
    \newtheorem{lemma}[theorem]{Lemma}
    \newtheorem{definition}[theorem]{Definition}
    \newtheorem{example}[theorem]{Example}
    \newtheorem{remark}[theorem]{Remark}
    \newtheorem{proposition}[theorem]{Proposition}
    \newtheorem*{question}{Question}
    \newtheorem*{reminder}{Reminder}
    \newtheorem*{remindexample}{Reminder/Example}
    \newtheorem*{motivation}{Motivation}
    \newtheorem{konvention}[theorem]{Convention}
    \newtheorem*{heuristik}{Heuristic}
    
  }{
    \theoremstyle{definition}
    \newtheorem{theorem}{Satz}[chapter]
    \newtheorem{corollary}[theorem]{Korollar}
    \newtheorem{lemma}[theorem]{Lemma}
    \newtheorem{definition}[theorem]{Definition}
    \newtheorem{example}[theorem]{Beispiel}
    \newtheorem{remark}[theorem]{Bemerkung}
    \newtheorem{proposition}[theorem]{Proposition}
    \newtheorem*{question}{Frage}
    \newtheorem*{reminder}{Erinnerung}
    \newtheorem*{remindexample}{Erinnerung/Beispiel}
    \newtheorem*{motivation}{Motivation}
    \newtheorem{konvention}[theorem]{Konvention}
    \newtheorem*{heuristik}{Heuristik}
  }
}

%Matrizen
\newcommand{\mat}[4]{\begin{pmatrix} #1&#2\\#3&#4\end{pmatrix}}
\newcommand{\bmat}[4]{\begin{bmatrix} #1&#2\\#3&#4\end{bmatrix}}
\newcommand{\textmat}[4]{\left(\begin{smallmatrix} #1&#2 \\ #3&#4 \end{smallmatrix}\right)}
\newcommand{\declarationofauthorship}{
    \IfStrEq{\@language}{english}{
      \includepdf[
          pages=-,
          addtotoc={2,chapter,1,Declarations of Authorship and Consent,eigenstaendigkeitserklaerung},
          % offset=10mm 0mm,
          openright=true,
          scale = 0.9,
          pagecommand={\thispagestyle{empty}}
      ]{chapters/Eigenstaendigkeitserklaerungen_BA_MA_deu_engl.pdf}
    }{
      \includepdf[
          pages=-,
          addtotoc={2,chapter,1,Eigenständigkeits- und Einverständniserklärung,eigenstaendigkeitserklaerung},
          % offset=10mm 0mm,
          openright=true,
          scale = 0.9,
          pagecommand={\thispagestyle{empty}}
      ]{chapters/Eigenstaendigkeitserklaerungen_BA_MA_deu_engl.pdf}
    }
}

\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{2}

\hypersetup{linkbordercolor=black}
\hypersetup{linkcolor=black}

