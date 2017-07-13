#!/bin/bash

cat >> $TEXFILENAME <<EOF

\section*{Rental Income Statement}
\subsection*{\infoCircle{Statement Number:}{$STNO}}
\subsubsection*{\infoCircle{Period beginning:}{$PREVDATE}}\\\\
\subsubsection*{\infoCircle{Period ending:}{$NICEDATE}}\\\\


\setlength{\arrayrulewidth}{1pt}
\setlength{\tabcolsep}{18pt}
\renewcommand{\arraystretch}{1.2}
{\rowcolors{2}{white}{gray!5!}
 \begin{tabular}{p{6cm} R{20mm} R{15mm} R{15mm}}
 Item & Unit price & Quantity & Total \\\\
 \hline

EOF

IFS=","
I=0
OUTGOINGS=0
while read ITEM PRICE QUANTITY
do
    TOTAL=$(bc <<< "$PRICE*$QUANTITY")

    cat >> $TEXFILENAME <<EOF
$ITEM & $PRICE & $QUANTITY & $TOTAL \\\\
EOF
    
    I=$I+1
    OUTGOINGS=$(bc <<< "$OUTGOINGS+$TOTAL")
done < billing.csv

NETINC=$(bc <<< $RENTALINC-$OUTGOINGS)

cat >> $TEXFILENAME <<EOF
 \end{tabular}
}

\vspace{5mm}

{\rowcolors{1}{white}{gray!5}
 \begin{tabular}{p{6cm} R{15mm}}
 Summary & \\\\
 \hline
 Rental income & $RENTALINC \\\\
 Outgoings & $OUTGOINGS \\\\
 Net income & $NETINC \\\\
 \end{tabular}
}

EOF
