#' Translate a set of biological identifiers into an selected alternative.
#'
#' This function will translate between sets of biological identifiers.
#'
#' @param authority A character containing any authoritative sources of identifier-mapping information.
#' @param species A character containing the Species. Note that the range of species supported 
#' depends on the choice of authority. Examples: Homo sapiens, Mus musculus.
#' @param domain This is the "namespace" (naming scheme) of the database identifiers the user wishes to translate.
#' Examples: embl, ipi
#' @param range This is the "namespace" (naming scheme) to which the user wishes to translate the input identifiers.
#' Examples: embl, ipi
#' @param ids a vector containing the ids to be translated
#' @param file NULL or a string containing the name of the file where the ids will be saved
#'
#' @return A vector containing the translated ids.
#'
#' @references http://llama.mshri.on.ca/synergizer/translate/
#'
#' @export
#'
#' @examples
#'
#' \dontrun{
#' library('SynergizerR')
#' translated <- synergizer( "ensembl", "Homo sapiens", "hgnc_symbol", "entrezgene", 
#' c("snph", "chac1", "actn3", "maybe_a_typo", "pja1", "prkdc", "RAD21L1", "Rorc", "kcnk16") )
#' }
#'
synergizer <- function( authority = "ensembl", 
						species = "Homo sapiens", 
						domain = "hgnc_symbol", 
						range = "entrezgene", 
						ids = c("snph", "maybe_a_typo", "pja1", "prkdc", "RAD21L1", "Rorc", "kcnk16"), 
						file=NULL)
{
	Sys.sleep(3) # In order to not have user host machine banned from using the service.
	t <- basicTextGatherer()
	h <- basicHeaderGatherer()

	curlPerform( url = "http://llama.mshri.on.ca/cgi/synergizer/serv",
				 .opts = list(httpheader = c('Content-Type' = "application/json"), verbose = FALSE),
				 curl = getCurlHandle(),
				 postfields = toJSON( list( method="translate",params=list(list(authority=authority, species=species, 
				 domain=domain, range=range, ids=ids)), id=123 ) ),
				 writefunction = t$update,
				 headerfunction = h$update
				) 

	output <- list(data = t$value(),
	               status = h$value()[['status']],
	               status.message = h$value()[['statusMessage']])
	# check http status
	httpstatus <- as.numeric(output$status)
	if (httpstatus != 200) {
		print(output$status.message); break
		}
	else response <- fromJSON(output$data)
	# return(response$result) # to debug
	# output <- t(sapply(response$result, '[', seq(max(sapply(response$result, length))))) # it works|
	tmp <- lapply(response$result,unlist); m.l <- max(sapply(tmp, length))
	output <- t(sapply(tmp, '[', seq(m.l)))
	colnames(output) <- c( deparse(substitute(domain)), rep(deparse(substitute(range)), m.l-1) ) 
	if(!is.null(file)) write.table( output, file = file, quote = F, sep = "\t", row.names = FALSE, col.names = TRUE )
	return( as.data.frame(output, stringsAsFactors=FALSE) )
}
