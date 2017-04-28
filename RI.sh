#!/bin/bash

cat >> $TEXTFILENAME <<EOF
\section*{Routine Inspection Report}

{\footnotesize This is a routine inspection report of the property for your \
information. This is not a registered building or pest report and cannot be \
construed as such. You can take steps to obtain your own building or pest re\
port if required and your property manager can assist with this. Property ow\
ners should also ensure that all properties comply with any other local and \
environmental laws. If you have a swimming pool you should also ensure that \
any required local government inspections have been completed to confirm com\
pliance with the Swimming Pools Act 1987.}

\clearpage

\subsection*{Property information}

\setlength{\arrayrulewidth}{1pt}
\setlength{\tabcolsep}{8pt}
\renewcommand{\arraystretch}{1.2}

\begin{tabularx}{\textwidth}{ |p{6cm}|X| }
  \hline
  \textbf{\color{ascroft}{Address of premesis}} & 4 Athol Place \\
  \hline
  \textbf{\color{ascroft}{Tenant's name(s)}} & Regan McManus, Andrew Davies \
\\
  \hline
  \textbf{\color{ascroft}{Lease commencement}} & 21/01/2017 \\
  \hline
  \textbf{\color{ascroft}{Lease expiry}} & 21/01/2018 \\
  \hline
  \textbf{\color{ascroft}{Date inspection completed}} & 23/03/2017 \\
  \hline
\end{tabularx}

\subsection*{General details}

\begin{tabularx}{\textwidth}{ |p{6cm}|X| }
  \hline
  \textbf{\color{ascroft}{Current rent}} & \$160 \\
  \hline
  \textbf{\color{ascroft}{Rent review}} & - \\
  \hline
  \textbf{\color{ascroft}{Overall standard}} & In good condition. \\
  \hline
  \textbf{\color{ascroft}{Recommended maintenance}} & No maintenance outstan\
ding. Garden should be reassesed at next inspection. \\
  \hline
  \textbf{\color{ascroft}{Work to be carried out by landlord}} & None \\
  \hline
  \textbf{\color{ascroft}{Work to be carried out by tenant}} & None \\
  \hline
  \textbf{\color{ascroft}{General comments}} & Very tidy for the most part. \
Bedrooms untidy but no concerns regarding condition of the property. \\
  \hline
\end{tabularx}

\clearpage

\subsection*{Inspection report}

\begin{tabularx}{\textwidth}{c|c|c|c|X|}
  \cline{2-4}
  & Condition & \multicolumn{2}{c|}{Action required} \\
  \cline{2-4}
  & Satisfactory& Tenant & Landlord \\
  \cline{2-5}
  & Y/N & Y/N & Y/N & Comments \\
  \hline
  \multicolumn{5}{|l|}{Areas} \\
  \hline
  \multicolumn{1}{|c|}{\$AREA} & \$SATISFACTORY & \$TENANTACTION & \$LANDLOR\
DACTION & \$COMMENT \\
  \hline
  \multicolumn{1}{|c|}{\$AREA} & \$SATISFACTORY & \$TENANTACTION & \$LANDLOR\
DACTION & \$COMMENT \\
  \hline
  \multicolumn{1}{|c|}{\$AREA} & \$SATISFACTORY & \$TENANTACTION & \$LANDLOR\
DACTION & \$COMMENT \\
  \hline
  \multicolumn{1}{|c|}{\$AREA} & \$SATISFACTORY & \$TENANTACTION & \$LANDLOR\
DACTION & \$COMMENT \\
  \hline
  \multicolumn{1}{|c|}{\$AREA} & \$SATISFACTORY & \$TENANTACTION & \$LANDLOR\
DACTION & \$COMMENT \\
  \hline
  \multicolumn{1}{|c|}{\$AREA} & \$SATISFACTORY & \$TENANTACTION & \$LANDLOR\
DACTION & \$COMMENT \\
  \hline
  \multicolumn{1}{|c|}{\$AREA} & \$SATISFACTORY & \$TENANTACTION & \$LANDLOR\
DACTION & \$COMMENT \\
  \hline
  \multicolumn{1}{|c|}{\$AREA} & \$SATISFACTORY & \$TENANTACTION & \$LANDLOR\
DACTION & \$COMMENT \\
  \hline
\end{tabularx}

\clearpage

\begin{figure}[h]

  \begin{subfigure}{0.5\textwidth}
    \centering
    \caption*{\$IMAGENUMBER}
    \includegraphics[width=0.8\linewidth]{IMG_2266}
    \caption*{\$AREA}
  \end{subfigure}

  \begin{subfigure}{0.5\textwidth}
    \centering
    \caption*{\$IMAGENUMBER}
    \includegraphics[width=0.8\linewidth]{IMG_2266}
    \caption*{\$AREA}
  \end{subfigure}

  \vspace{5mm}

  \begin{subfigure}{0.5\textwidth}
    \centering
    \caption*{\$IMAGENUMBER}
    \includegraphics[width=0.8\linewidth]{IMG_2266}
    \caption*{\$AREA}
  \end{subfigure}

  \begin{subfigure}{0.5\textwidth}
    \centering
    \caption*{\$IMAGENUMBER}
    \includegraphics[width=0.8\linewidth]{IMG_2266}
    \caption*{\$AREA}
  \end{subfigure}

\end{figure}

EOF
