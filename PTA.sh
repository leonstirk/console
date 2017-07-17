#!/bin/bash

cat >> $TEXFILENAME <<EOF

\section*{Pre-tenancy application form}

\subsection*{Tenancy details}

\infoCircle{Property address}{$ADDRESS, $SUBURB, $CITY, $POSTCODE}

\info{Commencement of tenancy}

\subsection*{Applicant details}

\info{Full name}

\info{Date of birth}

\info{Phone number}

\info{Email}

\info{Current address}

\info{Length of current tenancy}

\clearpage

\subsection*{Identification}

\textit{Please provide a copy of photo identification, such as your driver's license.}

\info{Driver's license number}

\info{Driver's license version}

\textit{Note that provision of this number is voluntary and will only be used to verify your identity when carrying out a credit check}

\info{Vehicle registration number}

\info{Make and model}

\info{Alternative form of ID}

\subsection*{Emergency contact}

\info{Name}

\info{Address}

\info{Phone number}

\info{Email}

\subsection*{Current landlord's details}

\textit{If you are currently renting please provide your landlord's name and contact details}

\info{Landlord's name}

\info{Phone number}

\info{Email}

\infoCircleFar{May I contact this person as a reference?}{Yes / No}

\clearpage

\subsection*{References}

\textit{Please provide two referees that I can contact. One of your referees should be able to provide a reference about your creditworthiness. If you have already provided your current landlord's details only one additional referee is required.}

\textit{Please let these people know that I may contact them for a reference.}

\begin{multicols}{2}

\subsubsection*{Referee 1}

\infoTwoCol{Name}

\infoTwoCol{Phone number}

\infoTwoCol{Email}

\subsubsection*{Referee 2}

\infoTwoCol{Name}

\infoTwoCol{Phone number}

\infoTwoCol{Email}

\end{multicols}

\subsection*{Signature}

I authorise the landlord/property manager to:

\begin{itemize}

\item{Collect, retain and use this information for the purpose of assessing my creditworthiness and suitability for the tenancy; and}

\item{Disclose information about me, whether collected from me directly or from any other source, to any other credit provider or any credit reporting agency for the purposes of providing or obtaining a credit report (which will involve a credit reporting agency providing information about me to the landlord/property manager).}

\end{itemize}

I understand that the credit reporting agency:

\begin{itemize}

\item{May hold my information on their credit reporting database and use it for providing credit reporting services, and they may disclose my information to their subscribers for the purpose of credit checking and debt collection; and}

\item{As part of providing a credit report, may check the Ministry of Justice fines database for any overdue fines I may have.}

\end{itemize}

\infoClose{Signed}

\infoClose{Date}

\textit{Under the Privacy Act 1993, you have the right to ask for a copy of all information held about you, and have the right to request the correction of any incorrect information.}
EOF
