% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mzQC.R
\name{MzQCcvParameter}
\alias{MzQCcvParameter}
\alias{MzQCcvParameter-class}
\title{A controlled vocabulary parameter, as detailed in the OBO file}
\description{
A controlled vocabulary parameter, as detailed in the OBO file

A controlled vocabulary parameter, as detailed in the OBO file
}
\examples{
  MzQCcvParameter$new("MS:4000070",
                      "retention time acquisition range",
                      c(0.2959, 5969.8172))
  isValidMzQC(MzQCcvParameter$new("MS:0000000"))

}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{accession}}{Accession number identifying the term within its controlled vocabulary.}

\item{\code{name}}{Name of the controlled vocabulary term describing the parameter.}

\item{\code{value}}{(optional) Value of the parameter.}

\item{\code{description}}{(optional) Definition of the controlled vocabulary term.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-MzQCcvParameter-new}{\code{MzQCcvParameter$new()}}
\item \href{#method-MzQCcvParameter-isValid}{\code{MzQCcvParameter$isValid()}}
\item \href{#method-MzQCcvParameter-toJSON}{\code{MzQCcvParameter$toJSON()}}
\item \href{#method-MzQCcvParameter-fromData}{\code{MzQCcvParameter$fromData()}}
\item \href{#method-MzQCcvParameter-clone}{\code{MzQCcvParameter$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MzQCcvParameter-new"></a>}}
\if{latex}{\out{\hypertarget{method-MzQCcvParameter-new}{}}}
\subsection{Method \code{new()}}{
Constructor
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MzQCcvParameter$new(
  accession = NA_character_,
  name = NA_character_,
  value = NA,
  description = NA_character_
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{accession}}{String value for initialization of field accession}

\item{\code{name}}{String value for initialization of field name}

\item{\code{value}}{Optional value for initialization of field value}

\item{\code{description}}{Optional string value for initialization of field description}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MzQCcvParameter-isValid"></a>}}
\if{latex}{\out{\hypertarget{method-MzQCcvParameter-isValid}{}}}
\subsection{Method \code{isValid()}}{
Verifies validity of the object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MzQCcvParameter$isValid(context = "MzQCcvParameter")}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{context}}{Optional string describing location in mzQC structure that is used for more informative warning texts.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MzQCcvParameter-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-MzQCcvParameter-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
Creates JSON file from this object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MzQCcvParameter$toJSON(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{Optional parameters for jsonlite:::asJSON()}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MzQCcvParameter-fromData"></a>}}
\if{latex}{\out{\hypertarget{method-MzQCcvParameter-fromData}{}}}
\subsection{Method \code{fromData()}}{
Sets data for this object from plain named lists of R objects
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MzQCcvParameter$fromData(data, context = "MzQCcvParameter")}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{data}}{A datastructure of R lists/arrays as obtained by 'jsonlite::fromJSON()'}

\item{\code{context}}{Optional string describing location in mzQC structure that is used for more informative warning texts.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MzQCcvParameter-clone"></a>}}
\if{latex}{\out{\hypertarget{method-MzQCcvParameter-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MzQCcvParameter$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
