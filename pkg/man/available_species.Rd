\name{available_species}
\alias{available_species}
\title{This method takes as parameter a single string, representing an authority,
and returns a character vector corresponding to the currently available
species for the chosen authority.}
\usage{
  available_species(authority = "ensembl")
}
\arguments{
  \item{authority}{A character containing any authoritative
  sources of identifier-mapping information.}
}
\value{
  A vector containing the currently available species for
  the chosen authority.
}
\description{
  This method takes as parameter a single string,
  representing an authority, and returns a character vector
  corresponding to the currently available species for the
  chosen authority.
}
\examples{
\dontrun{
library('SynergizerR')
available_species('ensembl') }
}
\references{
  http://llama.mshri.on.ca/synergizer/translate/
}

