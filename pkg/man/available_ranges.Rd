\name{available_ranges}
\alias{available_ranges}
\title{Takes as parameters three strings, representing an authority, a species, and a domain namespace,
and returns a character vector corresponding to the currently available range namespaces
for the chosen authority, species, and domain namespace.}
\usage{
  available_ranges(authority = "ensembl", species = "Homo sapiens", domain = "hgnc_symbol")
}
\arguments{
  \item{authority}{A character containing any authoritative
  sources of identifier-mapping information.}

  \item{species}{A character containing the Species. Note
  that the range of species supported depends on the choice
  of authority. Examples: Homo sapiens, Mus musculus.}

  \item{domain}{This is the "namespace" (naming scheme) of
  the database identifiers the user wishes to translate.
  Examples: embl, ipi}
}
\value{
  A vector containing the currently available range
  namespaces for the chosen authority, species, and domain
  namespace.
}
\description{
  Takes as parameters three strings, representing an
  authority, a species, and a domain namespace, and returns
  a character vector corresponding to the currently
  available range namespaces for the chosen authority,
  species, and domain namespace.
}
\examples{
\dontrun{
library('SynergizerR')
available_ranges('ensembl','homo sapiens','hgnc_symbol') }
}
\references{
  http://llama.mshri.on.ca/synergizer/translate/
}

