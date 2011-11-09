\name{available_domains}
\alias{available_domains}
\title{Takes as parameters two strings, representing an authority and a species, and returns a character vector
corresponding to the currently available domain namespaces for the chosen authority and species.}
\usage{
  available_domains(authority = "ensembl", species = "Homo sapiens")
}
\arguments{
  \item{authority}{A character containing any authoritative
  sources of identifier-mapping information}

  \item{species}{A character containing the Species. Note
  that the range of species supported depends on the choice
  of authority. Examples: Homo sapiens, Mus musculus.}
}
\value{
  A vector containing the currently available domain
  namespaces for the chosen authority and species.
}
\description{
  Takes as parameters two strings, representing an
  authority and a species, and returns a character vector
  corresponding to the currently available domain
  namespaces for the chosen authority and species.
}
\examples{
\dontrun{
library('SynergizerR')
available_domains('ensembl','homo sapiens') }
}
\references{
  http://llama.mshri.on.ca/synergizer/translate/
}

