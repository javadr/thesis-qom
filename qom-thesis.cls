\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\def\qom@thesis@date{2017/11/12}
\def\qom@thesis@version{0.1}
\ProvidesClass{qom-thesis}[%
    \qom@thesis@date\space version\qom@thesis@version\space
  University of  Qom thesis class%
]
\newif\if@qom@print
\newcount\qom@thesistype
\newcount\qom@thesis@supervisor
\newcount\qom@thesis@advisor
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\DeclareOption*{\PassOptionsToPackage{\CurrentOption}{xepersian}}
\DeclareOption{print}{\@qom@printtrue}
\DeclareOption{noprint}{\@qom@printfalse}
\ProcessOptions\relax
\LoadClass[a4paper,12pt,]{report}
\RequirePackage{keyval}
\define@key{qomthesis}{نام و نام‌خانوادگی}{\def\@author@persian{#1}}
\define@key{qomthesis}{نام و نام خانوادگی}{\def\@author@persian{#1}}
\define@key{qomthesis}{شماره دانشجویی}{\def\@student@id{#1}}
\define@key{qomthesis}{شمارهٔ دانشجویی}{\def\@student@id{#1}}
\define@key{qomthesis}{شماره‌ی دانشجویی}{\def\@student@id{#1}}
\define@key{qomthesis}{author}{\def\@author@english{#1}}
\define@key{qomthesis}{عنوان}{\def\@title@persian{#1}}
\define@key{qomthesis}{title}{\def\@title@english{#1}}
\define@key{qomthesis}{دانشکده}{\def\@faculty{#1}}
\define@key{qomthesis}{گروه}{\def\@department{#1}}
\define@key{qomthesis}{رشته}{\def\@major{#1}}
\define@key{qomthesis}{گرایش}{\def\@field{#1}}
\define@key{qomthesis}{تاریخ تحویل}{\def\@submissiondate{#1}}
\define@key{qomthesis}{تاریخ دفاع}{\def\@defensedate{#1}}
\define@key{qomthesis}{phd}     []{\qom@thesistype=0\relax}
\define@key{qomthesis}{masters}     []{\qom@thesistype=1\relax}
\define@key{qomthesis}{bachelor}     []{\qom@thesistype=2\relax}
\define@key{qomthesis}{تعداد واحد}{\def\@credit{#1}}
\define@key{qomthesis}{نمره}{\def\@grade{#1}}
\define@key{qomthesis}{نمره به حروف}{\def\@grade@letters{#1}}
\define@key{qomthesis}{درجه}{\def\@degree{#1}}
\define@key{qomthesis}{استاد راهنمای اوّل}{\qom@thesis@supervisor=1\relax\def\@first@supervisor@name@persian{#1}}
\define@key{qomthesis}{استاد راهنمای اول}{\qom@thesis@supervisor=1\relax\def\@first@supervisor@name@persian{#1}}
\define@key{qomthesis}{first supervisor}{\qom@thesis@supervisor=1\relax\def\@first@supervisor@name@english{#1}}
\define@key{qomthesis}{استاد راهنمای دوّم}{\qom@thesis@supervisor=2\relax\def\@second@supervisor@name@persian{#1}}
\define@key{qomthesis}{استاد راهنمای دوم}{\qom@thesis@supervisor=2\relax\def\@second@supervisor@name@persian{#1}}
\define@key{qomthesis}{second supervisor}{\qom@thesis@supervisor=2\relax\def\@second@supervisor@name@english{#1}}
\define@key{qomthesis}{استاد مشاور اوّل}{\qom@thesis@advisor=1\relax\def\@first@advisor@name@persian{#1}}
\define@key{qomthesis}{استاد مشاور اول}{\qom@thesis@advisor=1\relax\def\@first@advisor@name@persian{#1}}
\define@key{qomthesis}{first advisor}{\qom@thesis@advisor=1\relax\def\@first@advisor@name@english{#1}}
\define@key{qomthesis}{استاد مشاور دوّم}{\qom@thesis@advisor=2\relax\def\@second@advisor@name@persian{#1}}
\define@key{qomthesis}{استاد مشاور دوم}{\qom@thesis@advisor=2\relax\def\@second@advisor@name@persian{#1}}
\define@key{qomthesis}{second advisor}{\qom@thesis@advisor=2\relax\def\@second@advisor@name@english{#1}}
\define@key{qomthesis}{تقدیم به}{\def\@dedicatedto{#1}}
\define@key{qomthesis}{نیایش}{\def\@praise{#1}}
\define@key{qomthesis}{سپاسگزاری}{\def\@acknowledgement{#1}}
\define@key{qomthesis}{چکیده}{\def\@abstract@persian{#1}}
\define@key{qomthesis}{کلمات کلیدی}{\def\@keywords@persian{#1}}
\define@key{qomthesis}{abstract}{\def\@abstract@english{#1}}
\define@key{qomthesis}{keywords}{\def\@keywords@english{#1}}
\newcommand{\thesisdetails}{\setkeys{qomthesis}}
\@onlypreamble\thesisdetails

%%%%%%%%%  Packages  %%%%%%%%%%%%%%%%%
%-------------------------------------------------------------------------------------------------------------------

% در ورژن جدید زی‌پرشین برای تایپ متن‌های ریاضی، این سه بسته، حتماً باید فراخوانی شود
\RequirePackage{amsthm,amssymb,amsmath}
% بسته‌ای برای تنطیم حاشیه‌های بالا، پایین، چپ و راست صفحه
\RequirePackage[top=30mm, bottom=30mm, left=25mm, right=35mm]{geometry}

\RequirePackage{graphicx}
\graphicspath{{images/}}

\RequirePackage[]{xcolor}
\RequirePackage{bidi-atbegshi}

\RequirePackage{array}
\newcolumntype{C}[1]{>{\raggedleft\centering\arraybackslash}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}}
\newcolumntype{M}[1]{>{\raggedleft\centering\arraybackslash}m{#1}}

\RequirePackage{enumitem}
\RequirePackage{tabularx}
\RequirePackage{pifont}
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
\settextfont[Language=Default,Scale=1.33,BoldFont={IRlotus}]{IRLotus} %scale adopted with respect to XB Zar font. 
\setlatintextfont[Scale=1.0]{Times New Roman}
\paragraphfootnotes
\setlength{\footmarkwidth}{0pt}

\setdigitfont[Scale=1]{Yas}
% تعریف قلم‌های فارسی و انگلیسی اضافی برای استفاده در بعضی از قسمت‌های متن
\defpersianfont\nastaliq[Language=Default,Scale=2.5,AutoFakeBold]{IranNastaliq}
\defpersianfont\chapternumber[Language=Default,Scale=1.5,BoldFont={IRlotus}]{IRLotus}
\defpersianfont\zarfont{XB Zar}
\defpersianfont\titrfont{XB Titre}
%
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
%
\newcommand{\qomtitle}{%
%%%%%%%%%%%%%%%% صفحهٔ سفید پس از جلد 
\thispagestyle{empty}
\vspace*{\fill}
\noindent
\textcolor{gray}{\hfill\tiny
آماده‌ شده توسط کلاس \texttt{qom-thesis}، نسخهٔ \lr{\qom@thesis@version}}
%%%%%%%%%%%%%%% صفحه بسم‌الله 
\newpage
\thispagestyle{empty}
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
%%%%%%%%%%%%%%% صفحه عنوان 
\cleardoublepage%~
\newpage
\begin{titlepage}
{\zarfont\fontsize{12}{14}\selectfont\includegraphics[width=2cm, height=2cm]{qomlogo}\\ \bfseries دانشگاه قم}
\\[5pt]
{\zarfont\fontsize{12}{14}\selectfont\bfseries دانشکده \@faculty 
\\[5pt] 
گروه \@department}
\\[10pt] 
%\par
%\vspace{.3\baselineskip}
{\zarfont\fontsize{12}{14}\selectfont\bfseries
\ifcase\qom@thesistype{رساله دکتری}\or{پایان‌نامه کارشناسی‌ارشد}\or{پروژه کارشناسی}\fi
}
%\vskip 2ex
\vskip 5pt
\centerline{\zarfont\fontsize{12}{14}\selectfont\bfseries  رشته \@major{}
\ifx\@field\@undefined\else گرایش \@field\fi}
\vskip 4ex
{\titrfont\fontsize{14}{16}\selectfont\bfseries عنوان: \\
\bfseries {\fontsize{22}{24}\selectfont\@title@persian }}
\baselineskip=1.5cm\par
\vskip 4ex
 \baselineskip=.5cm
\large
{\large\bfseries\ifcase\qom@thesis@supervisor%0
\or%1
\titrfont استاد راهنما: \\
\fontsize{12}{14}\selectfont\@first@supervisor@name@persian
\or%2
\titrfont استادان راهنما: \\
\fontsize{12}{14}\selectfont\@first@supervisor@name@persian{} و \@second@supervisor@name@persian
}
\par
{\large\bfseries\ifcase\qom@thesis@advisor%0
\or%1
\titrfont استاد مشاور: \\
\fontsize{12}{14}\selectfont\@first@advisor@name@persian
\or%2
\titrfont استادان مشاور: \\
\fontsize{12}{14}\selectfont\@first@advisor@name@persian{} و \@second@advisor@name@persian
}
\par
{\large\bfseries%
\titrfont نگارنده: \\
\fontsize{12}{14}\selectfont\@author@persian}\par
{\bfseries\fontsize{12}{14}\selectfont\zarfont \@submissiondate}
\end{titlepage}
%%%%%%%%%%%%%%% صفحه تأییده داوران
\cleardoublepage%~
\newpage
\thispagestyle{empty}
\baselineskip=.76cm
\begin{center}
{\zarfont\fontsize{12}{14}\selectfont\includegraphics[width=2cm, height=2cm]{qomlogo} %\\  دانشگاه قم\\
}\\[5pt]
{\titrfont\bfseries «صورت جلسه دفاع از \ifcase\qom@thesistype{رساله دکتری}\or{پایان‌نامه کارشناسی ارشد}\fi»}
\end{center}
{\parindent=\z@
{\bfseries با تأييدات خداوند متعال و با استعانت از حضرت ولی عصر}
 (عجل الله تعالی فرجه الشريف)
 
 جلسه دفاعیه \ifcase\qom@thesistype{رساله دکتری}\or{پایان‌نامه کارشناسی ارشد}\fi{} آقای/خانم {\bfseries\@author@persian} 
 رشته {\bfseries\@major}
 
 تحت عنوان {\bfseries\@title@persian}
 
 با حضور هیأت داوران در محل دانشگاه قم در تاریخ {\bfseries\@defensedate} تشکیل گردید. 
 
 در این جلسه، \ifcase\qom@thesistype{رساله}\or{پایان‌نامه}\fi{} با نمره 
 {\bfseries\@grade (\@grade@letters)}
    و با درجه عالی ~%
    \ifx\@degree\@excellent\rlap{\checkmark}\fi$\bigcirc$ \hskip 10pt
    بسیار خوب~%
    \ifx\@degree\@verygood\rlap{\checkmark}\fi$\bigcirc$\hskip 10pt 
    خوب~%
    \ifx\@degree\@good\rlap{\checkmark}\fi$\bigcirc$\hskip 10pt 
    قابل قبول~%
    \ifx\@degree\@acceptable\rlap{\checkmark}\fi$\bigcirc$\hskip 10pt مورد دفاع قرار گرفت. 
    
%    \setLTRtable
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

 
}
%%%%%%%%%%%%%%% صفحه تعهدنامه اصالت پایان‌نامه/رساله
\cleardoublepage%~
\newpage
%\vspace*{\fill} 
%{\large \bfseries \noindent 
\thispagestyle{empty}
\begin{center}
{\zarfont\fontsize{12}{14}\selectfont\includegraphics[width=2cm, height=2cm]{qomlogo}\\  دانشگاه قم}\\
{\bfseries\titrfont
مدیریت تحصیلات تکمیلی\\
«تعهدنامه اصالت \ifcase\qom@thesistype{رساله}\or{پایان‌نامه}\fi»}
\end{center}
\rule{\textwidth}{1mm}\vspace{-\baselineskip}\\[2pt]
\rule{\textwidth}{1pt}

{
\baselineskip=.76cm

    \noindent 
    اینجانب %آقای/خانم: 
    {\bfseries\@author@persian{}}  دانشجوی مقطع 
    {\bfseries\ifcase\qom@thesistype{دکتری}\or{کارشناسی‌ ارشد}\fi{}}
    به شماره دانشجویی \linebreak
    {\bfseries\@student@id }
    رشته
    {\bfseries\@major }
    گرایش 
    {\bfseries\@field }
    که در تاریخ 
    {\bfseries\@defensedate }
    از \ifcase\qom@thesistype{رساله}\or{پایان‌نامه}\fi{} خود تحت عنوان:\\
    \centerline{\bfseries«\@title@persian» }
    با کسب نمره 
    {\bfseries\@grade }
    ({\bfseries\@grade@letters})
     و با درجه 
     {\bfseries \@degree }
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
    }
%\vspace*{\fill}
%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%% صفحه تقدیم 
\cleardoublepage%~
\newpage
\ifx\@dedicatedto\undefined%
\else
\thispagestyle{empty}
\vspace*{5cm}
{\nastaliq تقدیم}
\vspace*{2cm}
\baselineskip=.76cm

{\noindent\@dedicatedto}
\fi
%%%%%%%%%%%%%%% صفحه نیایش 
\cleardoublepage%~
\newpage
\ifx\@praise\undefined%
\else
\thispagestyle{empty}
\vspace*{5cm}
{\nastaliq نیایش}
\vspace*{2cm}
\baselineskip=.76cm

{\noindent\@praise}
\fi
%%%%%%%%%%%%%%% صفحه سپاسگزاری
\cleardoublepage%~
\newpage
\ifx\@acknowledgement\undefined%
\else
\thispagestyle{empty}
\vspace*{5cm}
{\nastaliq تشکر و قدردانی}
\vspace*{2cm}
\baselineskip=.76cm

{\noindent\@acknowledgement}
\fi
%%%%%%%%%%%%%%% صفحه چکیده
\cleardoublepage%~
\newpage
\ifx\@abstract@persian\undefined%
\else
\thispagestyle{empty}
\vspace*{5cm}
{\nastaliq چکیده}
\vspace*{2cm}
\baselineskip=.76cm

{\noindent\@abstract@persian}

\vspace*{1cm}
{\noindent کلمات کلیدی: \ifx\@keywords@persian\undefined\else\@keywords@persian{}\fi}
\fi
%%%%%%%%%%%%%%% صفحه
\cleardoublepage%~
%\newpage
%\thispagestyle{empty}
%{%\minutesfont
%\centerline{بسمه تعالی}%
%\vspace{1em}%
%\renewcommand{\arraystretch}{2.25}%
%\begin{tabular}{|M{3.4cm}|@{}M{6.95cm}@{}|M{3cm}|}
%\hline
%\vspace{1pt}
%\includegraphics[scale=.20]{qomlogo}\par
%\vspace{-2mm}
%{\small 
%مدیریت تحصیلات تکمیلی
%}
%&
%\baselineskip=1cm
%{\large \bfseries 
%صورتجلسه دفاعیه پایان‌نامه دانشجوی
%\par
%دورهٔ {\ifcase\qom@thesistype\or کارشناسی ارشد\or دکتری\fi}
%&
%شناسه: {\ifcase\qom@thesistype\or ب/ک/\lr{3}\or ب/د/\lr{3}\fi}
%\\ \hline
%\multicolumn{3}{|p{14cm}|}{
%\baselineskip=1cm
%جلسه دفاعیه پایان‌نامه تحصیلی آقای/خانم: \@author@persian
%\hfill
% دانشجوی {\ifcase\qom@thesistype\or کارشناسی ارشد\or دکتری\fi}
%\par
% رشتـه/گرایش:       
%\@subject/\@major
%\par                                        
%تحت عنوان:        
%\@title@persian
%\par                                                                                                        
%و تعداد واحد:   
%\hskip 1ex
%\ifx\@credit\undefined\else\@credit\fi
%\hskip 1ex
%در تاریخ 
%\ifx\@credit\undefined\else\@defensedate\ \fi \
% با حضور اعضای هيأت داوران (به شرح ذیل) تشكيل گرديد.
%\par
%پس از ارزيابی توسط هيأت داوران، پايان‌نامه با نمره به عدد 
%\ifx\@grade\undefined
%\hphantom{۱۹٫۲۵}
%\else
%\@grade\
%\fi
%به حروف    
%\ifx\@letgrade\undefined
%\hphantom{نوزده و بیست و پنج صدم}
%\else
%\@grade@letters\
%\fi                        
%و  درجه      
%\ifx\@degree\undefined
%\hphantom{عالی}
%\else
%\@degree\
%\fi
% مورد تصويب قرار گرفت.

%\vspace{2em}
%\begin{tabular}{@{}R{4.2cm}C{5.7cm}C{3cm}@{}}
%%%\hline
%\multicolumn{1}{c}{\underline{عنوان}}
% &
%\underline{نام و نام خانوادگی}
%&
%\underline{امضاء}%
%\\[1em]
%%%\hline
%\ifcase\qom@thesis@supervisor\or استاد\or استادان\fi{راهنما}:\fi
%\ifnum\qom@thesistype=2
%الف:
%\ifnum\qom@thesis@supervisor=2
%\newline
%\hphantom{استاد/استادان راهنما:}
%ب:
%\fi\fi
% & 
% \@first@supervisor@name@persian{}
% \ifnum\qom@thesis@supervisor=2
% \par
% \@second@supervisor@name@persian{}
% \fi
% &
%\\[2em]
%\ifcase\qom@thesis@advisor\or استاد\or استادان\fi{مشاور}:\fi
%\ifnum\qom@thesistype=2
%الف:
%\ifnum\qom@thesis@advisor=2
%\newline
%\hphantom{استاد/استادان مشاور:}
%ب:
% \fi\fi
%&
% \ifnum\qom@thesis@advisor>0
%   \@first@advisor@name@persian
%\fi
% \ifnum\qom@thesis@advisor>1
% \par
%   \@second@advisor@name@persianc
% \fi
% &
%\\[2em]
%\ifcase\qom@thesistype\or
%متخصص و صاحبنظر داخلی:
%\or
%داور داخل گروه: 
%\fi

%\ifnum\qom@thesistype=2
%الف:
%\ifx\@secondinternalreferee\undefined
% \else
% \newline
%\hphantom{داور داخل گروه:}
%ب:
% \fi
% \fi
%&
%\ifx\@firstinternalreferee\undefined
%  \else
%   \@firstinternalreferee
%\fi
% \ifx\@secondinternalreferee\undefined
% \else
% \par
% \@secondinternalreferee
% \fi
% &
%\\[2em] 
%\if@mscthesis 
%متخصص و صاحبنظر خارجی:
%\else
%داور خارج از گروه: 
%\fi
%\if@mscthesis
%\else 
%الف:
%\ifx\@secondexternalreferee\undefined
%\else
%\newline
%\hphantom{داور خارج از گروه:}
%ب:
% \fi
% \fi
% & 
% \@firstexternalreferee{}
% \ifx\@secondexternalreferee\undefined
% \else
% \par
% \@secondexternalreferee
% \fi
% &
%\\[1.5cm] 
%&
%\multicolumn{2}{R{7cm}}{
%\baselineskip=.7cm
%نماينده تحصيلات تكميلی دانشگاه (ناظر)
%\par
%نام ونام خانوادگی:
%\ifx\@viewer\undefined
%  \else
%   \@viewer
%\fi
%\par
%امضاء:
%}
%\\[5em]
%%%\hline 
%\end{tabular} 
%}
%\\ \hline
%\end{tabular}
%}% end of \bnazanin font
%\cleardoublepage%~
%\newpage
%\ifx\@faabstract\undefined%
%\else
%\@faabstract
%\thispagestyle{empty}
%\fi
%\pagenumbering{harfi}
%\pagestyle{plain}
%\setcounter{page}{1}
%\clearpage
%\fi
%}
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
\def\@makechapterhead#1{%
\vspace*{-30\p@}%
{\parindent \z@ \mycustomraggedright %\@mycustomfont
\ifnum \c@secnumdepth >\m@ne
%\if@mainmatter
\huge\bfseries \@chapapp\space {\chapternumber\thechapter}
\par\nobreak
\vskip 20\p@
%\fi
\fi
\interlinepenalty\@M 
\Huge \bfseries #1\par\nobreak
\vskip 120\p@
}}
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
