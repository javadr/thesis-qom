%%%
%%%  This is file `qom-thesis.cls',
%%%  Version 0.1 
%%%  This work is inspired by `Tabriz_thesis.cls' by Vahid Damanafshan,
%%%  `yazd-thesis.cls' by Vahid Damanafshan, `KNTU_thesis.cls' by Farschad Torabi, and 
%%%  `aut-thesis' by Vafa Khalighi. 
%%%   __________________________________
%%%
%%%   Copyright © 2017 Seiied-Mohammad-Javad Razavian
%%%  
%%%   http://www.parsilatex.com  
%%%   __________________________________
%%%   
%%%  Change Log:
%%%  ver 0.1, Nov 12th, 2017
%%%  First Release

\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\def\qom@thesis@date{2017/11/12}
\def\qom@thesis@version{0.1}
\ProvidesClass{qom-thesis}[%
    \qom@thesis@date\space version\qom@thesis@version\space
  University of  Qom thesis class%
]
\newif\if@qom@print
\newif\if@qom@index
\newcount\qom@thesistype
\newcount\qom@thesis@supervisor
\newcount\qom@thesis@advisor
\newcount\qom@thesis@supervisor@english
\newcount\qom@thesis@advisor@english
\newcount\qom@thesis@referee@enternal
\newcount\qom@thesis@referee@external
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption*{\PassOptionsToPackage{\CurrentOption}{xepersian}}
\DeclareOption{print}{\@qom@printtrue}
\DeclareOption{noprint}{\@qom@printfalse}
\DeclareOption{phd}{\qom@thesistype=\z@\relax} %default option 
\DeclareOption{master}{\qom@thesistype=\@ne\relax}
\DeclareOption{bachelor}{\qom@thesistype=\tw@\relax}
\DeclareOption{index}{\@qom@indextrue}%
\ProcessOptions\relax
\LoadClass[a4paper,12pt,openany, oneside]{book}
\RequirePackage{keyval}
\define@key{qomthesis}{نام و نام‌خانوادگی}{\def\@author@persian{#1}}
\define@key{qomthesis}{نام و نام خانوادگی}{\def\@author@persian{#1}}
\define@key{qomthesis}{نام و نام‌خانوادگي}{\def\@author@persian{#1}}
\define@key{qomthesis}{نام و نام خانوادگي}{\def\@author@persian{#1}}
\define@key{qomthesis}{شماره دانشجویی}{\def\@student@id{#1}}
\define@key{qomthesis}{شمارهٔ دانشجویی}{\def\@student@id{#1}}
\define@key{qomthesis}{شماره‌ی دانشجویی}{\def\@student@id{#1}}
\define@key{qomthesis}{شماره دانشجويي}{\def\@student@id{#1}}
\define@key{qomthesis}{شمارهٔ دانشجويي}{\def\@student@id{#1}}
\define@key{qomthesis}{شماره‌ي دانشجويي}{\def\@student@id{#1}}
\define@key{qomthesis}{author}{\def\@author@english{#1}}
\define@key{qomthesis}{عنوان}{\def\@title@persian{#1}}
\define@key{qomthesis}{title}{\def\@title@english{#1}}
\define@key{qomthesis}{دانشکده}{\def\@faculty{#1}}
\define@key{qomthesis}{گروه}{\def\@department{#1}}
\define@key{qomthesis}{رشته}{\def\@major{#1}}
\define@key{qomthesis}{گرایش}{\def\@field{#1}}
\define@key{qomthesis}{گرايش}{\def\@field{#1}}
\define@key{qomthesis}{تاریخ تحویل}{\def\@submissiondate{#1}}
\define@key{qomthesis}{تاريخ تحويل}{\def\@submissiondate{#1}}
\define@key{qomthesis}{faculty}{\def\@faculty@english{#1}}
\define@key{qomthesis}{department}{\def\@department@english{#1}}
\define@key{qomthesis}{major}{\def\@major@english{#1}}
\define@key{qomthesis}{field}{\def\@field@english{#1}}
\define@key{qomthesis}{submission date}{\def\@submissiondate@english{#1}}
\define@key{qomthesis}{تاریخ دفاع}{\def\@defensedate{#1}}
\define@key{qomthesis}{تاريخ دفاع}{\def\@defensedate{#1}}
%\define@key{qomthesis}{phd}     []{\qom@thesistype=\z@\relax}
%\define@key{qomthesis}{master}     []{\qom@thesistype=\@ne\relax}
%\define@key{qomthesis}{bachelor}     []{\qom@thesistype=\tw@\relax}
\define@key{qomthesis}{تعداد واحد}{\def\@credit{#1}}
\define@key{qomthesis}{نمره}{\def\@grade{#1}}
\define@key{qomthesis}{نمره به حروف}{\def\@grade@letters{#1}}
\define@key{qomthesis}{درجه}{\def\@degree{#1}}
\define@key{qomthesis}{استاد راهنمای اوّل}{\qom@thesis@supervisor=\@ne\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@first@supervisor@name@persian{\@name}\edef\@first@supervisor@rank@persian{\@rank}}
\define@key{qomthesis}{استاد راهنمای اول}{\qom@thesis@supervisor=\@ne\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@first@supervisor@name@persian{\@name}\edef\@first@supervisor@rank@persian{\@rank}}
\define@key{qomthesis}{استاد راهنماي اوّل}{\qom@thesis@supervisor=\@ne\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@first@supervisor@name@persian{\@name}\edef\@first@supervisor@rank@persian{\@rank}}
\define@key{qomthesis}{استاد راهنماي اول}{\qom@thesis@supervisor=\@ne\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@first@supervisor@name@persian{\@name}\edef\@first@supervisor@rank@persian{\@rank}}
\define@key{qomthesis}{first supervisor}{\qom@thesis@supervisor@english=\@ne\relax\def\@first@supervisor@name@english{#1}}
\define@key{qomthesis}{استاد راهنمای دوّم}{\qom@thesis@supervisor=\tw@\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@second@supervisor@name@persian{\@name}\edef\@second@supervisor@rank@persian{\@rank}}
\define@key{qomthesis}{استاد راهنمای دوم}{\qom@thesis@supervisor=\tw@\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@second@supervisor@name@persian{\@name}\edef\@second@supervisor@rank@persian{\@rank}}
\define@key{qomthesis}{استاد راهنماي دوّم}{\qom@thesis@supervisor=\tw@\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@second@supervisor@name@persian{\@name}\edef\@second@supervisor@rank@persian{\@rank}}
\define@key{qomthesis}{استاد راهنماي دوم}{\qom@thesis@supervisor=\tw@\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@second@supervisor@name@persian{\@name}\edef\@second@supervisor@rank@persian{\@rank}}
\define@key{qomthesis}{second supervisor}{\qom@thesis@supervisor@english=\tw@\relax\def\@second@supervisor@name@english{#1}}
\define@key{qomthesis}{استاد مشاور اوّل}{\qom@thesis@advisor=\@ne\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@first@advisor@name@persian{\@name}\edef\@first@advisor@rank@persian{\@rank}}
\define@key{qomthesis}{استاد مشاور اول}{\qom@thesis@advisor=\@ne\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@first@advisor@name@persian{\@name}\edef\@first@advisor@rank@persian{\@rank}}
\define@key{qomthesis}{first advisor}{\qom@thesis@advisor@english=\@ne\relax\def\@first@advisor@name@english{#1}}
\define@key{qomthesis}{استاد مشاور دوّم}{\qom@thesis@advisor=\tw@\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@second@advisor@name@persian{\@name}\edef\@second@advisor@rank@persian{\@rank}}
\define@key{qomthesis}{استاد مشاور دوم}{\qom@thesis@advisor=\tw@\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@second@advisor@name@persian{\@name}\edef\@second@advisor@rank@persian{\@rank}}
\define@key{qomthesis}{second advisor}{\qom@thesis@advisor@english=\tw@\relax\def\@second@advisor@name@english{#1}}
\define@key{qomthesis}{داور داخلی اوّل}{\qom@thesis@referee@enternal=\@ne\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@first@referee@name{\@name}\edef\@first@referee@rank{\@rank}}
\define@key{qomthesis}{داور داخلی اول}{\qom@thesis@referee@enternal=\@ne\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@first@referee@name{\@name}\edef\@first@referee@rank{\@rank}}
\define@key{qomthesis}{داور داخلي اوّل}{\qom@thesis@referee@enternal=\@ne\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@first@referee@name{\@name}\edef\@first@referee@rank{\@rank}}
\define@key{qomthesis}{داور داخلي اول}{\qom@thesis@referee@enternal=\@ne\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@first@referee@name{\@name}\edef\@first@referee@rank{\@rank}}
\define@key{qomthesis}{داور داخلی دوّم}{\qom@thesis@referee@enternal=\tw@\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@second@referee@name{\@name}\edef\@second@referee@rank{\@rank}}
\define@key{qomthesis}{داور داخلی دوم}{\qom@thesis@referee@enternal=\tw@\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@second@referee@name{\@name}\edef\@second@referee@rank{\@rank}}
\define@key{qomthesis}{داور داخلي دوّم}{\qom@thesis@referee@enternal=\tw@\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@second@referee@name{\@name}\edef\@second@referee@rank{\@rank}}
\define@key{qomthesis}{داور داخلي دوم}{\qom@thesis@referee@enternal=\tw@\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@second@referee@name{\@name}\edef\@second@referee@rank{\@rank}}
\define@key{qomthesis}{داور خارجی اوّل}{\qom@thesis@referee@external=\@ne\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@first@referee@external@name{\@name}\edef\@first@referee@external@rank{\@rank}}
\define@key{qomthesis}{داور خارجی اول}{\qom@thesis@referee@external=\@ne\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@first@referee@external@name{\@name}\edef\@first@referee@external@rank{\@rank}}
\define@key{qomthesis}{داور خارجي اوّل}{\qom@thesis@referee@external=\@ne\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@first@referee@external@name{\@name}\edef\@first@referee@external@rank{\@rank}}
\define@key{qomthesis}{داور خارجي اول}{\qom@thesis@referee@external=\@ne\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@first@referee@external@name{\@name}\edef\@first@referee@external@rank{\@rank}}
\define@key{qomthesis}{داور خارجی دوّم}{\qom@thesis@referee@external=\tw@\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@second@referee@external@name{\@name}\edef\@second@referee@external@rank{\@rank}}
\define@key{qomthesis}{داور خارجی دوم}{\qom@thesis@referee@external=\tw@\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@second@referee@external@name{\@name}\edef\@second@referee@external@rank{\@rank}}
\define@key{qomthesis}{داور خارجي دوّم}{\qom@thesis@referee@external=\tw@\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@second@referee@external@name{\@name}\edef\@second@referee@external@rank{\@rank}}
\define@key{qomthesis}{داور خارجي دوم}{\qom@thesis@referee@external=\tw@\relax\expandafter\@get@name@rank\expandafter{#1}%
\edef\@second@referee@external@name{\@name}\edef\@second@referee@external@rank{\@rank}}
\define@key{qomthesis}{نماینده تحصیلات تکمیلی}{\expandafter\@get@name@rank\expandafter{#1}%
\edef\qom@graduate@repsentative@name{\@name}\edef\qom@graduate@repsentative@rank{\@rank}}
\define@key{qomthesis}{نماينده تحصيلات تکميلي}{\expandafter\@get@name@rank\expandafter{#1}%
\edef\qom@graduate@repsentative@name{\@name}\edef\qom@graduate@repsentative@rank{\@rank}}
\define@key{qomthesis}{تقدیم به}{\def\@dedicatedto{#1}}
\define@key{qomthesis}{تقديم به}{\def\@dedicatedto{#1}}
\define@key{qomthesis}{نیایش}{\def\@praise{#1}}
\define@key{qomthesis}{نيايش}{\def\@praise{#1}}
\define@key{qomthesis}{سپاسگزاری}{\def\@acknowledgement{#1}}
\define@key{qomthesis}{سپاسگزاري}{\def\@acknowledgement{#1}}
\define@key{qomthesis}{چکیده}{\def\@abstract@persian{#1}}
\define@key{qomthesis}{چکيده}{\def\@abstract@persian{#1}}
\define@key{qomthesis}{کلمات کلیدی}{\def\@keywords@persian{#1}}
\define@key{qomthesis}{کلمات کليدي}{\def\@keywords@persian{#1}}
\define@key{qomthesis}{abstract}{\def\@abstract@english{#1}}
\define@key{qomthesis}{keywords}{\def\@keywords@english{#1}}
\newcommand{\thesisdetails}{\setkeys{qomthesis}}
\@onlypreamble\thesisdetails
%%%%%%%%%  Some Macros for Internal Use  %%%%%%%%%%%%%%%%%
\newsavebox\dotboxwidth
\def\qom@dotfill#1{\cleaders\hb@xt@ #1{\hss .\hss }\hfill \kern \z@}
\newcommand\qom@dotline[2][.3em]{\sbox\dotboxwidth{#2}\leavevmode\hb@xt@ \wd\dotboxwidth{\qom@dotfill{#1}\hfil}}
\newcommand\qom@dotlined[2][.3em]{\leavevmode\hb@xt@ #2{\qom@dotfill{#1}\hfil}}
%%%%% name-rank
%\def\@get#1-#2;{\def\@name{#1}\def\@rank{#2}}%
%\def\@striprank#1-{\edef\@rank{#1}}%
%\def\@get@name@rank#1{%
%  \@get#1-\relax;%
%  \edef\@tmpa{\@rank}%
%  \edef\@relax{\relax}%
%  \ifx\@tmpa\@relax%
%  \else\expandafter\@striprank\@rank\fi%
%}%
%%%%% name(rank)
\def\@get#1(#2);{\def\@name{#1}\def\@rank{#2}}%
\def\@striprank#1({\def\@@striprank##1){##1}%
\edef\@rank{\@@striprank#1}}%
\def\@get@name@rank#1{%
  \@get#1(\relax);%
  \edef\@tmpa{\@rank}%
  \edef\@relax{\relax}%
  \ifx\@tmpa\@relax%
  \else\expandafter\@striprank\@rank\fi%
}%
%%%%%%%%%  Packages  %%%%%%%%%%%%%%%%%
%-------------------------------------------------------------------------------------------------------------------
% در ورژن جدید زی‌پرشین برای تایپ متن‌های ریاضی، این سه بسته، حتماً باید فراخوانی شود
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
% بسته‌ای برای تنطیم حاشیه‌های بالا، پایین، چپ و راست صفحه
\RequirePackage[top=25mm, bottom=25mm, left=25mm, right=35mm]{geometry}
%
\RequirePackage{graphicx}
\graphicspath{{images/}}
%
\RequirePackage[]{xcolor}
\RequirePackage{bidi-atbegshi}
%
\RequirePackage{array}
\newcolumntype{C}[1]{>{\raggedleft\centering\arraybackslash}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}}
\newcolumntype{M}[1]{>{\raggedleft\centering\arraybackslash}m{#1}}
%
\RequirePackage{enumitem}
\RequirePackage{tabularx}
\RequirePackage{booktabs}
%
\RequirePackage{emptypage}
%
\RequirePackage{fancyhdr}
% بسته‌ای برای ظاهر شدن «مراجع»  در فهرست مطالب
\RequirePackage[nottoc]{tocbibind}

\if@qom@index
    \PassOptionsToPackage{quickindex-variant2}{xepersian}%
    \RequirePackage{makeidx}%
    \makeindex%
\fi    

%%%%%%%%%%%%%%%%%%%%%%%%%%
% فراخوانی بسته زی‌پرشین و تعریف قلم فارسی و انگلیسی
\RequirePackage{bidipoem}
\RequirePackage{biditools}
\bidi@AtEndPreamble{%
\RequirePackage[extrafootnotefeatures,]{xepersian}
% See http://qa.parsilatex.com/7884 for details
\if@bidi@csundef{@bidi@removefromreset}{}{%
\@bidi@removefromreset{footnote}{chapter}%
}
%\settextfont[Language=Default,Scale=1.33,BoldFont={IRlotus}]{IRLotus} %scale adopted with respect to XB Zar font.
\settextfont[Language=Default,Scale=1.2,]{XB Niloofar} %scale adopted with respect to XB Zar font.  
\setlatintextfont[Scale=1.1,]{Linux Libertine}%Times New Roman}
\paragraphfootnotes
\setlength{\footmarkwidth}{0pt}
%
\setdigitfont[Scale=1]{Yas}
% تعریف قلم‌های فارسی و انگلیسی اضافی برای استفاده در بعضی از قسمت‌های متن
\defpersianfont\nastaliq[Language=Default,Scale=2.5,AutoFakeBold]{IranNastaliq}
\defpersianfont\chapternumber[Language=Default,Scale=1.5,BoldFont={IRlotus}]{IRLotus}
\defpersianfont\zarfont{XB Zar}
\defpersianfont\titrfont{XB Titre}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  با استفاده از این دستور می‌توان فونت و فارسی و یا انگلیسی بودن اعداد در فرمول‌ها را به حالت اولیه (یعنی پیش‌فرض لاتک) برگرداند.
\DefaultMathsDigits
%
%\DeclareMathSizes{textsize}{mathsize}{scriptsize}{scriptscriptsize}
% گزینه اول: این برای چه دسته فونتی است. پیش فرض استایل ما فونت 10pt است. 
% گزینه دوم: اندازه فونت توابع و موجودات ریاضی درون متن.
% گزینه سوم: برای اسکریپت ها، اندازه زیرنویس و بالانویس.
% گزینه چهارم: برای زیرنویس زیرنویس.

% در دستورات زیر ما برای سه حالت، اندازه‌های مورد نظر را تعریف کرده ایم. 
\DeclareMathSizes{10}{11}{9}{8}   % For size 10 text
\DeclareMathSizes{11}{12}{11}{10}   % For size 11 text
\DeclareMathSizes{12}{13}{12}{11}  % For size 12 text
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newsavebox\qom@thesis@proof@box
\sbox{\qom@thesis@proof@box}{\textcolor{gray}{\tiny آماده‌ شده توسط کلاس \texttt{qom-thesis}، نسخهٔ \lr{\qom@thesis@version}}}
\AtBeginShipout{\AtBeginShipoutLowerRight{%
\put(0,\LengthToUnit{\ht\qom@thesis@proof@box}){\rotatebox{90}{\usebox\qom@thesis@proof@box}}%
}}
}
%
\def\@excellent{عالی}
\def\@verygood{بسیار خوب}
\def\@good{خوب}
\def\@acceptable{قابل قبول}
%
\def\Thesis{\ifcase\qom@thesistype{رساله}\or{پایان‌نامه}\or{پروژه}\fi}
%
\def\titlepage{\newpage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{preamblepage}{%
\cleardoublepage%~
\newpage%
\thispagestyle{empty}%
\baselineskip=.76cm
\parindent=\z@}% at the beginnig of the environment
{\thispagestyle{empty}}% at the end of  environment
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\pagetitle#1{%
\vspace*{5cm}
{\nastaliq #1}
\vspace*{2cm}\par
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\renewenvironment{abstract}{
%\section*{چکیده}
%\settextfont[Scale=1.2]{Adobe Arabic} 
%\setlatintextfont[Scale=1]{Times New Roman}
%}{\\*[8pt]}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\oathpage{%  تعهدنامه اصالت پایان‌نامه/رساله
\begin{preamblepage}
    \begin{center}
        {\zarfont\fontsize{12}{14}\selectfont\includegraphics[width=2cm, height=2cm]{qomlogo}\\  دانشگاه قم}\\
        {\bfseries\titrfont
        مدیریت تحصیلات تکمیلی\\
        «تعهدنامه اصالت \ifcase\qom@thesistype{رساله}\or{پایان‌نامه}\fi»}
    \end{center}
    \rule{\textwidth}{1mm}\vspace{-\baselineskip}\\[2pt]
    \rule{\textwidth}{1pt}

    \baselineskip=.76cm

    \noindent 
    اینجانب آقای/خانم: 
    {\ifx\@author@persian\undefined\qom@dotline{سیدمحمدجواد رضویان}\else\bfseries\@author@persian\fi{} }
    دانشجوی مقطع 
    {کارشناسی ارشد}\ifnum\qom@thesistype=1\rlap{\checkmark}\fi$\bigcirc$ %\hskip 10pt
    {دکتری}\ifnum\qom@thesistype=0\rlap{\checkmark}\fi$\bigcirc$ %\hskip 10pt 

    به شماره دانشجویی 
    {\ifx\@student@id\undefined\qom@dotline{۹۶ ۱۲۱۴۱۰۱۸}\else\bfseries\@student@id\fi{} }
    رشته
    {\ifx\@major\undefined\qom@dotline{مهندسی کامپیوتر}\else\bfseries\@major\fi{} }
    {\ifx\@field\undefined\else گرایش \bfseries\@field\fi }
    که در تاریخ 
    {\ifx\@defensedate\undefined\qom@dotline{۱۳۹۶/۰۷/۱۴}\else\bfseries\@defensedate\fi{} }
    از \ifcase\qom@thesistype{رساله}\or{پایان‌نامه}\fi{} خود تحت عنوان:\\
    \centerline{\ifx\@title@persian\undefined\qom@dotlined{7cm}\else\bfseries«\@title@persian»\fi}
    با کسب نمره  با عدد: 
    {\ifx\@grade\undefined\qom@dotline{۱۹/۲۵}\else\bfseries\@grade\fi{} }
    با حروف: 
    {\ifx\@grade@letters\undefined\qom@dotline{نوزده و بیست و پنج صدم تمام}\else\bfseries\@grade@letters\fi}
     و با درجه 
     {\ifx\@degree\undefined\qom@dotline{عالی}\else\bfseries\@degree\fi{} }\linebreak
     دفاع نموده‌ام، بدین وسیله متعهد می‌شوم که:
     \begin{enumerate}[label=\arabic*-]
        \item 
        این \ifcase\qom@thesistype{رساله}\or{پایان‌نامه}\fi{} حاصل تحقیق و پژوهش انجام شده توسط اینجانب بوده و در مواردی که از دستاوردهای 
        علمی و پژوهشی دیگران اعم از پایان‌نامه، کتاب، مقاله، \ldots استفاده نموده‌ام،   مطابق ضوابط و رویه  موجود، نام منبع مورد استفاده و سایر مشخصات 
        آن را در فهرست مربوطه ذکر و درج کرده‌ام. 
        \item 
        این \ifcase\qom@thesistype{رساله}\or{پایان‌نامه}\fi{} قبلاً برای هیچ مدرک تحصیلی هم سطح، پایین‌تر یا بالاتر در سایر \linebreak 
        دانشگاه‌ها و مؤسسات آموزش عالی ارائه نشده است. 
        \item 
        چنانچه بعد از فراغت از تحصیل،‌ قصد استفاده و هرگونه بهره‌برداری اعم از چاپ کتاب، ثبت اختراع و \ldots 
        از این \ifcase\qom@thesistype{رساله}\or{پایان‌نامه}\fi{} را داشته باشم، از حوزه معاونت پژوهشی واحد مجوزهای مربوطه را اخذ نمایم. 
        \item 
        چنانچه در هر مقطع زمانی خلاف موارد فوق ثابت شود، عواقب ناشی از آن را می‌پذیرم  و واحد دانشگاه قم مجاز است با اینجانب مطابق ضوابط و مقررات 
        رفتار نموده و در صورت ابطال مدرک تحصیلی‌ام هیچگونه ادعایی نخواهم داشت. 
     \end{enumerate}

    \setLTRtable     
     \begin{tabularx}{\textwidth}{XX}
     \begin{flushleft}
     \bfseries
     {\makebox[5cm]{نام و نام‌خانوادگی متعهد:}}\\
     {\makebox[5cm]{\scriptsize تاریخ و امضاء}}
     \end{flushleft}
     &
     \begin{flushright}
     \bfseries
     \makebox[7cm]{صحت امضای دانشجو مورد تایید است.}\\
     \makebox[7cm]{نماینده تحصیلات تکمیلی}\\
     \makebox[7cm]{نام و نام‌خانوادگی: \ldots\ldots\ldots}\\
     \makebox[7cm]{\scriptsize تاریخ و امضاء}
     \end{flushright}\\
     \end{tabularx}
\end{preamblepage}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\refereeAck{%
\begin{preamblepage}
    \baselineskip=.76cm
%    \parindent=\z@
    \begin{center}
    {\zarfont\fontsize{12}{14}\selectfont\includegraphics[width=2cm, height=2cm]{qomlogo} %\\  دانشگاه قم\\
    }\\%[5pt]
    {\titrfont\bfseries «صورت جلسه دفاع از \ifcase\qom@thesistype{رساله دکتری}\or{پایان‌نامه کارشناسی ارشد}\fi»}
    \end{center}
    
    {\bfseries با تأييدات خداوند متعال و با استعانت از حضرت ولی عصر}
     {\small (عجل الله تعالی فرجه الشريف)}
     
     جلسه دفاعیه \ifcase\qom@thesistype{رساله دکتری}\or{پایان‌نامه کارشناسی ارشد}\fi{} خانم/آقای{}
         {\ifx\@author@persian\undefined\qom@dotlined{4cm}\else\bfseries\@author@persian\fi} 
     رشته 
        {\ifx\@major\undefined\qom@dotline{مهندسی کامپیوتر}\else\bfseries\@major\fi}
     
     تحت عنوان 
     {\ifx\@title@persian\undefined\qom@dotlined{9cm}\else\bfseries\@title@persian\fi}
     با حضور هیأت داوران در محل دانشگاه قم در تاریخ 
    {\ifx\@defensedate\undefined\qom@dotline{۱۳۹۶/۰۷/۱۴}\else\bfseries\@defensedate\fi{} }
     تشکیل گردید. 
     
     در این جلسه، \ifcase\qom@thesistype{رساله}\or{پایان‌نامه}\fi{} با نمره (به عدد  
     {\bfseries\ifx\@grade\undefined\ldots\ldots\ldots\else\@grade\fi}{،}
      به حروف
      {\bfseries\ifx\@grade@letters\undefined\ldots\ldots\ldots\ldots\ldots\ldots\ldots\ldots\else\@grade@letters\fi})    و \linebreak
        با درجه عالی ~%
        \ifx\@degree\@excellent\rlap{\checkmark}\fi$\bigcirc$ \hskip 10pt 
        بسیار~خوب~%
        \ifx\@degree\@verygood\rlap{\checkmark}\fi$\bigcirc$\hskip 10pt 
        خوب~%
        \ifx\@degree\@good\rlap{\checkmark}\fi$\bigcirc$\hskip 10pt 
        قابل~قبول~%
        \ifx\@degree\@acceptable\rlap{\checkmark}\fi$\bigcirc$\hskip 10pt مورد دفاع قرار گرفت. 
        
    \vspace{5mm}
    %\begin{tabular}{|@{}R{5.2cm}|C{5.2cm}|C{3cm}|C{3cm}@{}|}
    \def\@nextrow{\\[20pt]}
    \begin{tabularx}{\textwidth}{|R{4.2cm}@{}|C{4.2cm}|C{2cm}|C{3.3cm}@{}|}
    %{rX@{}c@{}c@{}}
    \toprule
    \multicolumn{1}{|c|}{\titrfont\small عـــنـــوان} &
    \multicolumn{1}{c|}{\titrfont\small نام و نام‌خانوادگی}  &
    \multicolumn{1}{c|}{\titrfont\small مرتبه علمی}  &
    \multicolumn{1}{c|}{\titrfont\small امضاء}
     \\[5pt]
    \toprule\toprule
    \ifnum\qom@thesis@supervisor>\z@\ifcase\qom@thesis@supervisor\or{استاد}\or{استادان}\fi\ راهنما:  & 
    \@first@supervisor@name@persian & \@first@supervisor@rank@persian & \@nextrow
    \ifnum\qom@thesis@supervisor=\tw@ &\@second@supervisor@name@persian & \@second@supervisor@rank@persian & \@nextrow\fi\fi

    \ifnum\qom@thesis@advisor>\z@\ifcase\qom@thesis@advisor\or{استاد}\or{استادان}\fi\ مشاور:  & 
    \@first@advisor@name@persian & \@first@advisor@rank@persian &  \@nextrow
    \ifnum\qom@thesis@advisor=\tw@ &\@second@advisor@name@persian &  \@second@advisor@rank@persian &\@nextrow\fi\fi

    \ifnum\qom@thesis@referee@enternal>\z@\ifcase\qom@thesis@referee@enternal\or{استاد}\or{استادان}\fi\ داور داخلی:  & 
    \@first@referee@name  &  \@first@referee@rank  &  \@nextrow
    \ifnum\qom@thesis@referee@enternal=\tw@ &\@second@referee@name &  \@second@referee@rank  & \@nextrow\fi\fi

    \ifnum\qom@thesis@referee@external>\z@\ifcase\qom@thesis@referee@external\or{استاد}\or{استادان}\fi\ داور خارجی:  & 
    \@first@referee@external@name & \@first@referee@external@rank &\@nextrow
    \ifnum\qom@thesis@referee@external=\tw@ &\@second@referee@external@name & \@second@referee@external@rank & \@nextrow\fi\fi

    نماینده تحصیلات تکمیلی & 
    \ifx\qom@graduate@repsentative@name\undefined\else\qom@graduate@repsentative@name\fi &
    \ifx\qom@graduate@repsentative@rank\undefined\else\qom@graduate@repsentative@rank\fi &
    \@nextrow
    \bottomrule
    \end{tabularx}

        \vfill
        \begin{tabularx}{\textwidth}{XX}
            \begin{minipage}{.4\textwidth}
                \centering
                معاون آموزشی و پژوهشی دانشکده\\[5pt]
                نام و امضاء \\[2cm]
                    \null
            \end{minipage} &
            \begin{minipage}{.4\textwidth}
                \centering
                مدیر آموزش و  تحصیلات تکمیلی \\[5pt]
                نام و امضاء \\[2cm]
                    \null
            \end{minipage}
        \end{tabularx}
        \vfill    
\end{preamblepage}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\qomtitle}{%
%%%%%%%%%%%%%%%% صفحهٔ سفید پس از جلد %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\begin{preamblepage}
    \vspace*{\fill}
    \textcolor{gray}{\hfill\tiny آماده‌ شده توسط کلاس \texttt{qom-thesis}، نسخهٔ \lr{\qom@thesis@version}}
\end{preamblepage}

%%%%%%%%%%%%%%% صفحه بسم‌الله %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\begin{preamblepage}
    \begin{minipage}[c][\textheight][c]{\textwidth}%
    \centering
    \includegraphics[width=%
    \ifx\@besmwidth\undefined%
    .9\textwidth
    \else
    \@besmwidth\textwidth
    \fi
    ]{basmalah}
    \end{minipage}%
\end{preamblepage}
%%%%%%%%%%%%%%% صفحه عنوان  %%%%%%%%%%%%%%%
\begin{preamblepage}
    \begin{titlepage}
    {\zarfont\fontsize{12}{14}\selectfont\includegraphics[width=2cm, height=2cm]{qomlogo}\\ \bfseries دانشگاه قم}
    \\[5pt]
    {\zarfont\fontsize{12}{14}\selectfont\bfseries دانشکده 
    \ifx\@faculty\undefined\qom@dotline{علوم ریاضی}\else\@faculty\fi
    \\[5pt] 
    گروه 
    \ifx\@department\undefined\qom@dotline{علوم کامپیوتر}\else\@department\fi}
    \\[10pt] 
    %\par
    %\vspace{.3\baselineskip}
    {\vskip 4ex
    \zarfont\fontsize{14}{16}\selectfont\bfseries
    \ifcase\qom@thesistype{رساله دکتری}\or{پایان‌نامه کارشناسی‌ارشد}\or{پروژه کارشناسی}\fi
    }
    %\vskip 2ex
    \vskip 5pt
    \centerline{\zarfont\fontsize{12}{14}\selectfont\bfseries  رشته 
    {\ifx\@major\undefined\qom@dotline{مهندسی کامپیوتر}\else\bfseries\@major\fi}{}
    \ifx\@field\undefined\else گرایش \@field\fi}
    \vskip 4ex
    {\titrfont\fontsize{14}{16}\selectfont\bfseries عنوان: \\
    \ifx\@title@persian\undefined\qom@dotlined{9cm}\else\bfseries {\fontsize{22}{24}\selectfont\@title@persian }\fi}
    \baselineskip=1.5cm\par
    \vskip 4ex
     \baselineskip=.5cm
    \large
    {\large\bfseries\ifcase\qom@thesis@supervisor%0
    \titrfont استاد راهنما: \\
    \qom@dotlined{5cm}
    \or%1
    \titrfont استاد راهنما: \\
    \fontsize{12}{14}\selectfont\@first@supervisor@name@persian
    \or%2
    \titrfont استادان راهنما: \\
    \fontsize{12}{14}\selectfont\@first@supervisor@name@persian{} و \@second@supervisor@name@persian
    \fi
    }
    \par 
    {\large\bfseries\ifcase\qom@thesis@advisor\relax%0
    \ifnum\qom@thesistype=0\titrfont استاد مشاور: \\ \qom@dotlined{5cm} \fi
    \or%1
    \titrfont استاد مشاور: \\
    \fontsize{12}{14}\selectfont%
    \@first@advisor@name@persian
    \or%2
    \titrfont استادان مشاور: \\
    \fontsize{12}{14}\selectfont%
    \@first@advisor@name@persian{} و \@second@advisor@name@persian
    \fi
    }
    \par
    {\large%
    \titrfont نگارنده: \\
    \ifx\@author@persian\undefined\qom@dotlined{4cm}
    \else\fontsize{12}{14}\selectfont\bfseries\@author@persian\fi}
    \par
    {\bfseries\fontsize{12}{14}\selectfont\zarfont 
    \ifx\@submissiondate\undefined ماه سال\else\@submissiondate\fi}
    \end{titlepage}
\end{preamblepage}    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% برای پروژه کارشناسی نیازی به صفحات زیر نیست. 
\ifnum\qom@thesistype<\tw@
%%%%%%%%%%%%%%% صفحه تأییده داوران
\refereeAck%
%%%%%%%%%%%%%%% صفحه تعهدنامه اصالت پایان‌نامه/رساله
\oathpage%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\fi    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%% صفحه تقدیم 
\begin{preamblepage}
    \ifx\@dedicatedto\undefined%
    \else
        \pagetitle{تقدیم}    
        {\@dedicatedto}
    \fi
\end{preamblepage}    
%%%%%%%%%%%%%%% صفحه نیایش 
\begin{preamblepage}
    \ifx\@praise\undefined%
    \else
    \pagetitle{نیایش}    
    {\@praise}
    \fi
\end{preamblepage}    
%%%%%%%%%%%%%%% صفحه سپاسگزاری
\begin{preamblepage}
    \ifx\@acknowledgement\undefined%
    \else
        \pagetitle{تشکر و قدردانی}
        {\@acknowledgement}
    \fi
\end{preamblepage}
%%%%%%%%%%%%%%% صفحه چکیده
\begin{preamblepage}
    \ifx\@abstract@persian\undefined%
    \else
        \pagetitle{چکیده}
        \begin{abstractcount}
            {\@abstract@persian}%
        \end{abstractcount}
        \vspace*{1cm}\par
        {\noindent کلمات کلیدی: \ifx\@keywords@persian\undefined\else\bfseries\@keywords@persian{}\fi}
    \fi
\end{preamblepage}
%%%%%%%%%%%%%%% صفحه
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% دستورهایی برای سفارشی کردن صفحات اول فصل‌ها
\newcommand\mycustomraggedright{%
 \if@RTL\raggedleft%
 \else\raggedright%
 \fi}
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bidi@AfterPackage{xepersian}{%
\SepMark{-}
%\renewcommand{\بخش}{\section} 
%\eqcommand{subfigure}{subfloat} 
%\eqcommand{ذم}{cite} 
%\eqcommand{ر}{ref} 
% دستوری برای حذف کلمه «چکیده»
\renewcommand{\abstractname}{}
% دستوری برای حذف کلمه «abstract»
%\renewcommand{\latinabstract}{}
% دستوری برای تغییر نام کلمه «اثبات» به «برهان»
\renewcommand\proofname{\textbf{برهان}}
% دستوری برای تغییر نام کلمه «کتاب‌نامه» به «مراجع»
\renewcommand{\bibname}{مراجع}
% دستوری برای تعریف واژه‌نامه انگلیسی به فارسی
\newcommand\persiangloss[2]{#1\dotfill\lr{#2}\\}
% دستوری برای تعریف واژه‌نامه فارسی به انگلیسی 
\newcommand\englishgloss[2]{#2\dotfill\lr{#1}\\}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% با دستور newtheoremstyle شما می توانید یک استایل جدید برای محیط هایی چون plain، definition‌ و ... تعریف کنید. شکل کلی این دستور به صورت زیر است.

%%\newtheoremstyle{stylename}% name of the style to be used
%%  {spaceabove}% measure of space to leave above the theorem. E.g.: 3pt
%%  {spacebelow}% measure of space to leave below the theorem. E.g.: 3pt
%%  {bodyfont}% name of font to use in the body of the theorem
%%  {indent}% measure of space to indent
%%  {headfont}% name of head font
%%  {headpunctuation}% punctuation between head and body
%%  {headspace}% space after theorem head; " " = normal interword space
%%  {headspec}% Manually specify head
% % تعریف محیط‌های گوناگون مانند محیط برای قضیه و ... 
%% theoremstyle = > plain, definition, remark 
%% با دستور newtheorem یک نوع از استایلی که در بالای آن تعریف شده است ایجاد می کنیم. 
% تعریف و نحوه ظاهر شدن عنوان قضیه‌ها، تعریف‌ها، مثال‌ها و ...
\theoremstyle{definition}
\newtheorem{definition}{تعریف}[section]
\newtheorem{example}[definition]{مثال}
\theoremstyle{plain}
\newtheorem{theorem}[definition]{قضیه}
\newtheorem{lemma}[definition]{لم}
\newtheorem{proposition}[definition]{گزاره}
\newtheorem{corollary}[definition]{نتیجه}
\newtheorem{remark}[definition]{ملاحظه}
%%%%%%%%%%%%%%%%%%%%%%%%
%\theoremstyle{plain}
%\newtheorem{theorem}{قضیه}
%\newtheorem{lemma}{لم}
%\newtheorem{proposition}{گزاره}
%\theoremstyle{definition}
%\newtheorem{definition}{تعریف}
%\newtheorem{example}{مثال}
%\newtheorem{prob}{سوال}
%\theoremstyle{remark}
%\newtheorem{corollary}{نتیجه}
%\newtheorem{remark}{ملاحظه}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{%
\baselineskip=1cm
\bidi@patchcmd{\@Abjad}{آ}{الف}
{\typeout{Succeeded in changing `آ` into `الف`}}
{\typeout{Failed in changing `آ` into `الف`}}
\bidi@patchcmd{\@Abjad}{ه}{هـ}
{\typeout{Succeeded in changing `ه` into `هـ`}}
{\typeout{Failed in changing `ه` into `هـ`}}
\bidi@patchcmd{\@harfi}{آ}{\hbox{الف}}
{\typeout{Succeeded in changing `آ` into `الف`}}
{\typeout{Failed in changing `آ` into `الف`}}
\bidi@patchcmd{\@harfi}{ه}{هـ}
{\typeout{Succeeded in changing `ه` into `هـ`}}
{\typeout{Failed in changing `ه` into `هـ`}}
\PersianAlphs
%
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \if@RTL\raggedleft\else\raggedright\fi \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \huge\bfseries \@chapapp\space \expandafter\tartibinumeral\c@chapter
        \par\nobreak
        \vskip 20\p@
      \fi
    \fi
    \interlinepenalty\@M
    \Huge \bfseries #1\par\nobreak
    \vskip 40\p@
%    \thispagestyle{empty}
%    \newpage
  }}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \if@RTL\raggedleft\else\raggedright\fi
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
    \thispagestyle{empty}
%%    \newpage
  }}  
  \flushbottom
  \bidi@appto{\appendix}{\addcontentsline{toc}{chapter}{پیوست‌ها}}
    \setlength{\parindent}{1cm}
    \setlength{\parskip}{0pt}
%
%\setlength{\footskip}{
%\paperheight   -(1in+\voffset+\topmargin+\headheight+\headsep+\textheight)  -1cm
%}
%%%\bidi@appto\tableofcontents{%
%%%\pagenumbering{arabic}
%%%\setcounter{page}{1}
%%%\clearpage
%%%\cleardoublepage
%%%}
\frontmatter
\qomtitle
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\@part[#1]#2{%
\ifnum\c@secnumdepth >-2\relax
\refstepcounter{part}%
\addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
\else
\addcontentsline{toc}{part}{#1}%
\fi
\markboth{}{}%
{\centering
\interlinepenalty \@M
\ifnum \c@secnumdepth >-2\relax
 \huge\bfseries \partname\nobreakspace\thepart
\par
\vskip 20\p@
\fi
\Huge\bfseries #2\par}%
\@endpart}
%\def\@makechapterhead#1{%
%\vspace*{-30\p@}%
%{\parindent \z@ \mycustomraggedright %\@mycustomfont
%\ifnum \c@secnumdepth >\m@ne
%\if@mainmatter
%\huge\bfseries \@chapapp\space {\chapternumber\thechapter}
%\par\nobreak
%\vskip 20\p@
%\fi
%\fi
%\interlinepenalty\@M 
%\Huge \bfseries #1\par\nobreak
%\vskip 120\p@
%}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% http://qa.parsilatex.com/25972/
\newenvironment{abstractcount}{%
\newcount\WordCount
\newcount\My@Alphabets
\newXeTeXintercharclass\MyAlphabets
\newXeTeXintercharclass\MyPunctuations
\XeTeXcharclass`\{\MyPunctuations
\XeTeXcharclass`\}\MyPunctuations
\XeTeXcharclass`\[\MyPunctuations
\XeTeXcharclass`\]\MyPunctuations
\XeTeXcharclass`\(\MyPunctuations
\XeTeXcharclass`\)\MyPunctuations
\XeTeXcharclass`\`\MyPunctuations
\XeTeXcharclass`\'\MyPunctuations
\XeTeXcharclass`\!\MyPunctuations
\XeTeXcharclass`\:\MyPunctuations
\XeTeXcharclass`\;\MyPunctuations
\XeTeXcharclass`\?\MyPunctuations
\XeTeXcharclass`\؟\MyPunctuations
\XeTeXcharclass`\«\MyPunctuations
\XeTeXcharclass`\»\MyPunctuations
\XeTeXcharclass`\،\MyPunctuations
\XeTeXcharclass`\,\MyPunctuations
\My@Alphabets=`\آ \loop \XeTeXcharclass \My@Alphabets=\MyAlphabets \ifnum\My@Alphabets<`\ی \advance\My@Alphabets \@ne \repeat
\My@Alphabets=`\A \loop \XeTeXcharclass \My@Alphabets=\MyAlphabets \ifnum\My@Alphabets<`\Z \advance\My@Alphabets \@ne \repeat
\My@Alphabets=`\a \loop \XeTeXcharclass \My@Alphabets=\MyAlphabets \ifnum\My@Alphabets<`\z \advance\My@Alphabets \@ne \repeat
\XeTeXinterchartoks \MyAlphabets 4095 = {\PrintWordCount}
\XeTeXinterchartoks \MyAlphabets \MyPunctuations = {\PrintWordCount}
\XeTeXinterchartoks \MyAlphabets \bidi@dot@charclass = {\PrintWordCount}
\newcommand*{\PrintWordCount}{%\raise.4\baselineskip
\llap{\tiny\global\advance\WordCount\@ne\textcolor{red}{}%{\the\WordCount}
}}}% beginnig of abstractcount environment
{\renewcommand*{\PrintWordCount}{}
\ifnum\WordCount>333%
\par\null\vspace{5mm}
\centerline{\color{red}\bfseries\if@RTL\zarfont "متن چکیده نباید بیش از ۳۳۳ کاراکتر باشد؛‌ لطفاً آن را ویرایش نمایید.``\else%
``The Abstract cannot contain more than 333 words; Please modify it."\fi}
\centerline{\color{gray}\bfseries\if@RTL\zarfont در حال حاضر متن چکیدهٔ شما حاوی \the\WordCount{} کلمه است!\else%
Your abstract includes \the\WordCount{} words!\fi}%
\fi
}% end of abstractcount environment
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\defpersianfont\yasfont{Yas}
%کدهای زیر سبب نگارش تمامی‌ ارقام با قلم یاس می‌گردد. (در این قلم صفرها به صورت صحیح و توخالی نگاشته می‌شوند.)
\if@bidi@csundef{bidi@digits}{% 
\newcount\bidi@digits
\XeTeXinterchartokenstate=\@ne
\newXeTeXintercharclass\bidi@digits@charclass
\bidi@digits=`\0 \loop \XeTeXcharclass \bidi@digits \bidi@digits@charclass \ifnum\bidi@digits<`\9 \advance\bidi@digits \@ne \repeat
\bidi@digits=`\۰ \loop \XeTeXcharclass \bidi@digits \bidi@digits@charclass \ifnum\bidi@digits<`\۹ \advance\bidi@digits \@ne \repeat
}{}
\newXeTeXintercharclass\qom@leftparen@charclass
\newXeTeXintercharclass\qom@rightparen@charclass
\XeTeXcharclass `\( \qom@leftparen@charclass
\XeTeXcharclass `\) \qom@rightparen@charclass
\XeTeXcharclass `\[ \qom@leftparen@charclass
\XeTeXcharclass `\] \qom@rightparen@charclass
\ifdim\the\XeTeXversion\XeTeXrevision\p@>0.99993\p@
  \chardef\qom@alloc@intercharclass@top=4095
\else
  \chardef\qom@alloc@intercharclass@top=255
\fi
\XeTeXinterchartoks \qom@alloc@intercharclass@top \bidi@digits@charclass = {\BeginSwitchDigitFont}
\XeTeXinterchartoks \bidi@digits@charclass \qom@alloc@intercharclass@top = {\EndSwitchDigitFont}
\XeTeXinterchartoks \qom@leftparen@charclass \bidi@digits@charclass = {\BeginSwitchDigitFont}
\XeTeXinterchartoks \bidi@digits@charclass \qom@rightparen@charclass = {\EndSwitchDigitFont}
\if@bidi@csundef{if@nonlatin}{%
\newcommand*{\BeginSwitchDigitFont}{\if@Latin\else\yasfont \fi}
\newcommand*{\EndSwitchDigitFont}{\if@Latin\else\setpersianfont \fi}
}{%
\newcommand*{\BeginSwitchDigitFont}{\if@nonlatin\yasfont \fi}
\newcommand*{\EndSwitchDigitFont}{\if@nonlatin\setpersianfont \fi}
}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtEndDocument{%
\printindex
%%%%%%%%%%%%%%%%%%%%%% English Abstract %%%%%%%%%%%%%%%%%%%%%%%%%
\begin{preamblepage}
\begin{latin}
    \ifx\@abstract@english\undefined%
    \else
        \pagetitle{\Huge\lr{Abstract}}
        \begin{abstractcount}
            {\@abstract@english}%
        \end{abstractcount}
        \vspace*{1cm}\par
        {\noindent Keywords: \ifx\@keywords@english\undefined\else\bfseries\@keywords@english{}\fi}
    \fi
\end{latin}    
\end{preamblepage}
%%%%%%%%%%%%%%%%%%%%%% English Title %%%%%%%%%%%%%%%%%%%%%%%%%
\begin{preamblepage}
    \begin{titlepage}
\begin{latin}
    {\fontsize{12}{14}\selectfont\includegraphics[width=2cm, height=2cm]{qomlogo}\\ The University of Qom}
    \\[5pt]
    {\fontsize{12}{14}\selectfont Faculty of 
    \ifx\@faculty@english\undefined\qom@dotline{Mathematics}\else\@faculty@english\fi
    \\[5pt] 
    Department of  
    \ifx\@department@english\undefined\qom@dotline{Computer Science}\else\@department@english\fi}
    \\[10pt] 
    %\par
    %\vspace{.3\baselineskip}
%    {\vskip 4ex
%    \fontsize{14}{16}\selectfont\bfseries
%    \ifcase\qom@thesistype{رساله دکتری}\or{پایان‌نامه کارشناسی‌ارشد}\or{پروژه کارشناسی}\fi
%    }
    %\vskip 2ex
    \vskip 5pt
    \begin{center}
    {\fontsize{12}{14}\selectfont\bfseries  
    A Thesis Submitted in Partial Fulfillment of the Requirements for\linebreak the Degree of 
    \ifcase\qom@thesistype{Doctor of Philosophy}\or{Master of Science}\or{Bachelor of Science}\fi{} in
    {\ifx\@major@english\undefined\qom@dotline{Computer Science}\else\bfseries\@major@english\fi}{}
    }
    \end{center}
    \vskip 4ex
    {\fontsize{14}{16}\selectfont\textsf{Title:} \\
    \ifx\@title@english\undefined\qom@dotlined{9cm}\else\bfseries {\fontsize{22}{24}\selectfont\@title@english }\fi}
    \baselineskip=1.5cm\par
    \vskip 4ex
     \baselineskip=.5cm
    \large
    {\large\ifcase\qom@thesis@supervisor@english%0
     \textsf{Supervisor:} \\
    \qom@dotlined{5cm}
    \or%1
     \textsf{Supervisor:} \\
    \bfseries\fontsize{12}{14}\selectfont\@first@supervisor@name@english
    \or%2
     \textsf{Supervisors:} \\
    \bfseries\fontsize{12}{14}\selectfont\@first@supervisor@name@english{} and \@second@supervisor@name@english
    \fi
    }
    \par 
    {\large\ifcase\qom@thesis@advisor@english\relax%0
    \ifnum\qom@thesistype=0 Advisor: \\ \qom@dotlined{5cm} \fi
    \or%1
    \textsf{Advisor:} \\
    \bfseries\fontsize{12}{14}\selectfont%
    \@first@advisor@name@english
    \or%2
     \textsf{Advisors:} \\
    \bfseries\fontsize{12}{14}\selectfont%
    \@first@advisor@name@english{} and \@second@advisor@name@english
    \fi
    }
    \par
    {\large%
    \textsf{By:} \\
    \ifx\@author@english\undefined\qom@dotlined{4cm}
    \else\fontsize{12}{14}\selectfont\bfseries\@author@english\fi}
    \par
    {\fontsize{12}{14}\selectfont 
    \ifx\@submissiondate@english\undefined Season Year\else\@submissiondate@english\fi}
\end{latin}    
    \end{titlepage}
\end{preamblepage}    
%%%%%%%%%%%%%%%%%%% Blank Page %%%%%%%%%%%%%%%%%%%%%%%%%
\cleardoublepage
\newpage\null
\thispagestyle{empty}
}

\endinput


%% 
%% Copyright © 2017      by Seiied-Mohammad-Javad Razavian
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status)
%%  by Seiied-Mohammad-Javad Razavian
%% 
%%  It is a based on Tabriz_thesis of Vahid Damanafshan,
%%    which was based on xepersian-thesis.cls by Vafa Khalighi
%%   ____________________________________________________________________
%% Special thanks to Vafa Khalighi for the XePersian Package.
%% This work is supported by University of Qom.
%% End of file `qom-thesis.cls'.	
