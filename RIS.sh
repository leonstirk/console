#!/bin/bash

cat >> $TEXFILENAME <<EOF

\section*{Rental Income Statement}

\setlength{\arrayrulewidth}{2pt}
\setlength{\tabcolsep}{10pt}
\renewcommand{\arraystretch}{1.4}
\begin{tabularx}{\textwidth}{@{}lp{6.5cm}lr@{}}

  Account name: & $ACCNAME & Account Reference: & $ACCREF\\\\
  & $ACCADDRESS & Statement from: & $STARTDATE\\\\
  & $ACCSUBURB & Statement to: & $ENDDATE\\\\
  & $ACCCITY $ACCPOSTCODE & Statement Number: & $STNO\\\\

\end{tabularx}

\vspace{2cm}

 {\rowcolors{3}{white}{gray!5!}
 \begin{tabularx}{\textwidth}{X R{20mm} R{15mm} R{15mm}}
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
$ITEM & \\\$$PRICE & $QUANTITY & \\\$$TOTAL \\\\
EOF
    
    I=$I+1
    OUTGOINGS=$(bc <<< "$OUTGOINGS+$TOTAL")
done < ../billing.csv

NETINC=$(bc <<< $RENTALINC-$OUTGOINGS)

cat >> $TEXFILENAME <<EOF
 \end{tabularx}
 }

\vspace{1cm}

\setlength{\arrayrulewidth}{1pt}
{\rowcolors{2}{white}{gray!5}
 \begin{tabular}{p{6cm} R{15mm}}
 Summary & \\\\
 \hline
 Rental income & \\\$$RENTALINC \\\\
 Outgoings & \\\$$OUTGOINGS \\\\
 Net income & \\\$$NETINC \\\\
 \end{tabular}
}

EOF
