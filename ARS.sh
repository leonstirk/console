#!/bin/bash

cat >> $TEXFILENAME <<EOF
\section*{Annual Rental Income Summary}

\setlength{\arrayrulewidth}{1pt}
\setlength{\tabcolsep}{10pt}
\renewcommand{\arraystretch}{1.4}

\begin{tabularx}{\textwidth}{@{}lp{6.5cm}lr@{}}

  Account name: & $ACCNAME & Account Reference: & SchillbergSmith\\\\
  & $ACCADDRESS & Statement from: & $ASTARTDATE \\\\
  & $ACCSUBURB & Statement to: & $ENDDATE\\\\
  & $ACCCITY $ACCPOSTCODE & Statement Number: & $ASTNO\\\\

\end{tabularx}

\vspace{2cm}

\begin{tabularx}{\textwidth}{ X r r r r }
  \textbf{Details} & \textbf{Expenses} & \textbf{GST} & \textbf{Income} & \textbf{Balance} \\\\

  $ADDRESS, $SUBURB, $CITY $POSTCODE & & & & \\\\
  \cline{1-1}
  Rent & & & & \\\\
  Management Fees & & & & \\\\
  Maintenance & & & & \\\\
  \cline{2-5}
  \textbf{Total for property} & & & & \\\\
  \hhline{~====}
\end{tabularx}


EOF
