#!/bin/bash

./clean.sh

INFO=../info.csv

read -p "Make date (YYYY-MM-DD): "

if [ -n $REPLY ]
then
    TODAY=$(date -j -f "%F" $REPLY +"%s")
    MAKEDATE=$(date -r $TODAY "+%d_%m_%y")
    ENDDATE=$(date -r $(($TODAY - 86400)) "+%d/%m/%Y")
else
    TODAY=$(date "+%s")
    MAKEDATE=$(date -r $TODAY "+%d_%m_%y")
    ENDDATE=$(date -r $(($TODAY - 86400)) "+%d/%m/%Y")
fi

ADDRESS=$(cat $INFO | cut -f1 -d,)
SUBURB=$(cat $INFO | cut -f2 -d,)
CITY=$(cat $INFO | cut -f3 -d,)
POSTCODE=$(cat $INFO | cut -f4 -d,)
STNO=$(cat $INFO | cut -f5 -d,)
ASTNO=$(cat $INFO | cut -f6 -d,)
RENT=$(cat $INFO | cut -f7 -d,)
STARTDATE=$(cat $INFO | cut -f8 -d,)
ASTARTDATE=$(cat $INFO | cut -f9 -d,)
ACCNAME=$(cat $INFO | cut -f10 -d,)
ACCREF=$(cat $INFO | cut -f11 -d,)
ACCADDRESS=$(cat $INFO | cut -f12 -d,)
ACCSUBURB=$(cat $INFO | cut -f13 -d,)
ACCCITY=$(cat $INFO | cut -f14 -d,)
ACCPOSTCODE=$(cat $INFO | cut -f15 -d,)

RENTALINC=$(bc <<< "$RENT*4")

ADDRESSTAG="$(echo -e "${ADDRESS}" | tr -d '[:space:]')"

echo
echo "Property management authority  [1]"
echo "Pre-tenancy application        [2]"
echo "Tenancy agreement              [3]"
echo "Lease extension                [4]"
echo "Move-in inspection             [5]"
echo "Routine inspection             [6]"
echo "Rental income statement        [7]"
echo "Annual rental summary          [8]"
echo "Tenancy information pack       [9]"
echo
read -p "Enter number corresponding to document to produce " -n 1 -r
echo ""
echo ""

DOCNUM=$REPLY

case $DOCNUM in
    [1])
	DOCNAME="Property Management Authority"
	DOCTAG="PMA"
	;;
    [2])
	DOCNAME="Pre-tenancy application"
	DOCTAG="PTA"
	;;
    [3])
    	DOCNAME="Tenancy agreement"
	DOCTAG="TA"
	;;
    [4])
	DOCNAME="Lease extension"
	DOCTAG="EXT"
	;;
    [5])
	DOCNAME="Move-in inspection"
	DOCTAG="MI"
	;;
    [6])
	DOCNAME="Routine inspection"
	DOCTAG="RI"
	;;
    [7])
	DOCNAME="Rental income statement"
	DOCTAG="RIS"
	;;
    [8])
	DOCNAME="Annual rental summary"
	DOCTAG="ARS"
	;;
    [9])
	DOCNAME="Tenancy information pack"
	DOCTAG="TIP"
	    
esac

echo "Generate:"
echo "  - "$DOCNAME
echo "  - "$MAKEDATE"_"$ADDRESSTAG"_"$DOCTAG
echo ""

FILENAME=$MAKEDATE"_"$ADDRESSTAG"_"$DOCTAG
TEXFILENAME=$FILENAME".tex"

# create file #
touch $TEXFILENAME

# insert latex doc class #
cat >> $TEXFILENAME <<EOF
\documentclass[10pt]{article}
EOF

# insert latex packages #
cat >> $TEXFILENAME <<EOF
% Add absolute to position textboxes
\usepackage[absolute]{textpos}

% Add ragged2e to get header text flush right
\usepackage{ragged2e}

% Set a 1 inch margin
\usepackage[margin=1in]{geometry}

% Extra linespacing
\linespread{1.2}\selectfont

% Define colours
\usepackage{color}
\definecolor{ascroft}{RGB}{35,123,183}

% Set section heading colours
\usepackage{sectsty}
\sectionfont{\color{ascroft}}
\subsectionfont{\color{ascroft}}
\subsubsectionfont{\color{ascroft}}
\paragraphfont{\color{ascroft}}

% No paragraph indentation
\parindent0pt
\setlength{\parskip}{0.8\baselineskip}
\raggedright
\pagestyle{empty}

% Add graphics handling and set paths to ./assets and ./images
\usepackage{graphicx}
\graphicspath{ {./assets/}{./images/} }

% Enable captions and subcaptions for inspection photos
\usepackage{subcaption}
\usepackage{caption}

% List style to lowercase letters
\usepackage{enumitem}
\setenumerate[1]{label=(\alph*)}
\setenumerate[0]{label=(\roman*)}

% fancyhdr headers and footers
\usepackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}% Remove header rule
\fancyhf{}% Remove all header and footer contents
% \fancyhead{}% Remove all header contents

% Include tables
\usepackage{tabularx}
\usepackage[table]{xcolor}
\usepackage{array}
\usepackage{hhline}

% Support multiple columns
\usepackage{multicol}
\setlength{\columnsep}{1cm}
\usepackage{multirow}

\newcolumntype{R}[1]{>{\RaggedLeft\arraybackslash}p{#1}}

\cfoot{\footnotesize \textcolor{ascroft}{Ascroft Property Management} 11/35 Tennyson Street, Dunedin, 9016 Ph: 021 034 2105 E: info@ascroftproperty.co.nz}

\newcommand{\info}[1]{\makebox[5.5cm][l]{#1}\hrulefill\hss\par}

\newcommand{\infoTwoCol}[1]{\makebox[2.5cm][l]{#1}\hrulefill\hss\par}
\newcommand{\infoFlush}[1]{\hrulefill\hss\par}

\newcommand{\infoClose}[1]{\makebox[2.5cm][l]{#1}\hrulefill\hss\par}
\newcommand{\infoFar}[1]{\makebox[9cm][l]{#1}\hrulefill\hss\par}

\newcommand{\infoCircle}[2]{\makebox[5.5cm][l]{#1}{#2}\par}
\newcommand{\infoCircleFar}[2]{\makebox[11cm][l]{#1}{#2}\par}

EOF

# insert latex BOF #
cat >> $TEXFILENAME <<EOF
\begin{document}
EOF

# insert ascroft header #
cat >> $TEXFILENAME <<EOF
\begin{textblock*}{80pt}[0,0](1in,1in)
  \includegraphics[width=80pt]{headerLogo}
\end{textblock*}

\begin{flushright}
\begin{textblock*}{190pt}[1,0](7.5in, 1in)
Ascroft Property Management

11/35 Tennyson Street

Dunedin

9016

021 034 2105

info@ascroftproperty.co.nz

www.ascroftproperty.co.nz
\end{textblock*}
\end{flushright}

\vspace*{6cm}
EOF

# insert doc specific text #
case $DOCNUM in
    [1])
	. ./PMA.sh
	;;
    [2])
	. ./PTA.sh
	;;
    [3])
	. ./TA.sh
	;;
    [4])
	. ./EXT.sh
	;;
    [5])
	. ./MI.sh
	;;
    [6])
	. ./RI.sh
	;;
    [7])
	. ./RIS.sh
	;;
    [8])
	. ./ARS.sh
	;;
    [9])
	. ./TIP.sh
	;;
esac

#insert latex footer #
cat >> $TEXFILENAME <<EOF
\end{document}
EOF

# output to pdf file
pdflatex -interaction=batchmode $TEXFILENAME

case $DOCNUM in
    [1])
	echo "PMA"
	;;
    [2])
	echo "PTA"
	;;
    [3])
	echo "TA"
	;;
    [4])
	echo "EXT"
	;;
    [5])
	echo "MI"
	;;
    [6])
	echo "RI"
	;;
    [7])
	echo "RIS"
	mv $FILENAME.pdf ../RIS/$STNO"_"$FILENAME".pdf"
	open ../RIS/$STNO"_"$FILENAME".pdf"
	STNO=$((10#$STNO))
	STNO=$(( $STNO+1 ))
	STNO=$( printf '%03d' $STNO );
	STARTDATE=$(date -r $TODAY "+%d/%m/%Y")
	;;
    [8])
	echo "ARS"
	mv $FILENAME.pdf ../ARS/$ASTNO"_"$FILENAME".pdf"
	open ../ARS/$ASTNO"_"$FILENAME".pdf"
	ASTNO=$((10#$ASTNO))
	ASTNO=$(( $ASTNO+1 ))
	ASTNO=$( printf '%03d' $ASTNO );
	ASTARTDATE=$(date -r $TODAY "+%d/%m/%y")
	;;
    [9])
	echo "TIP"
	;;
esac

echo $ADDRESS,$SUBURB,$CITY,$POSTCODE,$STNO,$ASTNO,$RENT,$STARTDATE,$ASTARTDATE,$ACCNAME,$ACCREF,$ACCADDRESS,$ACCSUBURB,$ACCCITY,$ACCPOSTCODE > tmp.csv
rm ../info.csv
mv tmp.csv ../info.csv

