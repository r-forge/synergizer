\name{synergizer}
\alias{synergizer}
\title{Translate a set of biological identifiers into an selected alternative.}
\usage{
  synergizer(authority = "ensembl", species = "Homo sapiens", domain = "hgnc_symbol", range = "entrezgene", ids = NULL, file = NULL)
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

  \item{range}{This is the "namespace" (naming scheme) to
  which the user wishes to translate the input identifiers.
  Examples: embl, ipi}

  \item{ids}{a vector containing the ids to be translated}

  \item{file}{NULL or a string containing the name of the
  file where the ids will be saved}
}
\value{
  A vector containing the translated ids.
}
\description{
  This function will translate between sets of biological
  identifiers.
}
\examples{

\dontrun{
library('SynergizerR')
symbols.ids <- synergizer( authority = "ensembl", species = "Homo sapiens", domain="affy_hg_u95av2", range="hgnc_symbol",ids=c("1939_at","1503_at","1454_at") )
entrez.ids <- synergizer( authority = "ensembl", species = "Homo sapiens", domain="hgnc_symbol", range="entrezgene",ids=c("snph", "pja1", "prkdc", "RAD21L1", "Rorc", "kcnk16") ) }

}
\references{
  http://llama.mshri.on.ca/synergizer/translate/
}

