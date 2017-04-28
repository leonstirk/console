#!/bin/bash

cat >> $TEXFILENAME <<EOF

\section*{Rental Income Statement}

\subsection*{Statement Number: $STNO}
 
\setlength{\arrayrulewidth}{1pt}
\setlength{\tabcolsep}{18pt}
\renewcommand{\arraystretch}{1.2}

{\rowcolors{2}{white}{gray!5!}
\begin{tabular}{ |p{3cm}|p{3cm}|p{3cm}|p{3cm}| }
\hline
Item & Unit price & Quantity & Total \\\\
\hline
\hline

EOF

IFS=","
i=0
outgoings=0
while read item price qt
do
    total=$(($price * $qt))
    
    cat >> $TEXFILENAME <<EOF
$item & $price & $qt & $total \\\\
EOF

    i=$i+1
    outgoings=$((outgoings+$total))
done < 4AtholBilling.csv

cat >> $TEXFILENAME <<EOF

\hline
\end{tabular}
}

{\rowcolors{1}{white}{gray!5}
\begin{tabular}{ |p{3cm}|p{3cm}| }
\hline
Rental income & $RENTALINC \\\\
Outgoings & $outgoings \\\\
Net income & $(($RENTALINC-$outgoings)) \\\\
\hline
\end{tabular}
}

EOF
