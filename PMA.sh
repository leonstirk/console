#!/bin/bash

cat >> $TEXFILENAME <<EOF

\section*{Property Management Authority}

\subsubsection*{Address of rental property: $ADDRESS}

\subsubsection*{\info{Rental available from}}

I hereby authorize Ascroft Property Management to act exclusively as my property manager on the terms and conditions set forth in the attached documents.

\begin{enumerate}
\item To collect rents owing on my property, and to pay them at the end of each month.
\item To lodge bond money with the Ministry of Building and Housing
\item To carry out a thorough inspection of the property at the beginning of each tenancy, and before refunding any bond money at the end of the tenancy.
\item To review the rent from time to time and recommend the appropriate market rent for the property.
\item To arrange new tenancies when required, prepare and sign tenancy documents on my behalf.
\item To do a periodic internal and external property inspection approximately one month from the commencement of the rental, and then every three months.
\item To carry out and pay for on my behalf, any urgent repairs to the property, that may from time to time become necessary.
\item To make every effort to contact me or any other nominated representative prior to commencing or authorising any work.
\item To act on my behalf at any mediation and/or Tenancy Tribunal proceedings.
\end{enumerate}

\clearpage

\subsection*{Property Owner Details}

\info{Full name}
\info{Home address}
\info{Phone}
\info{Email}

\subsubsection*{Rents collected to be paid to:}

\info{Account name}
\info{Account number}
\textit{Or attach a bank deposit slip}

\subsubsection*{Insurance details}

\info{Insurance company}
\info{Policy number}
Additional insurance information

\textit{What does your policy cover? E.g. landlord's chattels, intentional damage, loss of rent, carpet and floor coverings, glass?}

\infoFlush{}
\infoFlush{}
\infoFlush{}
\infoFlush{}

\subsubsection*{Emergency contact}

\info{Name}
\info{Phone}
\info{Address}

\clearpage

Ascroft Property Management shall be entitled to be remunerated for its management services as follows:
\begin{enumerate}
\item Management - 6\% on all monies collected.
  \item Letting fee - 1 week's rent - includes signage, marketing and tenant checks
  \item Routine property inspections - \\\$50 includes a written report and photos provided
  \item Tenancy Tribunal proceedings and preparation \\\$50 per hour
\end{enumerate}
All fees quoted are GST exclusive

\section*{Terms and conditions}

The property owner is entirely responsible for all compliance and safety issues such as but not limited to building permits, electrical and plumbing in relation to any work carried out or arranged by any persons other than those acting on behalf of Ascroft Property Management and instructed by them. The owner therefore indemnifies Ascroft Property Management in respect of any claim arising from any such issue.

Either party may terminate this agreement:
\begin{enumerate}
  \item Forthwith where both parties agree, or
  \item In the case where the property is un-tenanted, by the owner giving 3 weeks notice in writing, or
  \item Where the property is tenanted - by the owner giving 1 months notice in writing.
\end{enumerate}

If this property is furnished the owner is to provide a list of chattels to Ascroft Property Management prior to the commencement of the tenancy.

Two full sets of keys are to be provided (include number and description or labelled keys).

I confirm by signing this management agreement that I am legally entitled to enter into a management agreement with Ascroft Property Management Limited and that the details supplied in the document are correct.

\subsubsection*{\infoFar{Signed by owner}}

\subsubsection*{\infoFar{Signed by Ascroft Property Management}}

\clearpage

\section*{Property Details}

\info{Property address}
\info{Rent \\\$/week}
\info{Bedrooms}
\info{Bathrooms}
\info{Garaging}
\info{Off-street parks}
\info{Security alarm (if any)}
\info{Location of hot water cylinder}
\info{Electricity meter}
\info{Location of water toby}

\infoCircle{Heating}{Gas/Electric/Open Fire/Log burner/Heatpump}
\infoCircleFar{Fenced}{Yes/No}
\infoCircleFar{Furnished (if furnished, owner to provide a full list of chattels)}{Yes/No}
\infoCircleFar{Tenants responsible for section maintenance (gardens and lawns)}{Yes/No}

\infoFar{If pets allowed, specify type and number permitted}

\infoFar{When was the last time the chimney was swept?}
\infoFar{When was the heatpump last serviced?}
\infoFar{When was the last time the carpets were cleaned?}
\infoFar{Who is responsible for getting the carpets cleaned?}

What type of insulation does the property have?

\infoFlush{}
\infoFlush{}

EOF
