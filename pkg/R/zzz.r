.onLoad <- function(...) {
	# require(utils)
	# mylib     <- dirname(system.file(package = "SynergizeR"))
	# ver       <- packageDescription("SynergizeR", lib = mylib)$Version
	# builddate <- packageDescription("SynergizeR", lib = mylib)$Date
	
	packageStartupMessage("\nSynergizeR\n", appendLF = TRUE)
	# packageStartupMessage(paste("(Version ",ver,", built: ", builddate,")\n", sep=""), appendLF = TRUE)
	packageStartupMessage("IMPORTANT: The Synergizer has been designed for bulk translation of identifiers. A typical use of this service should require only one call to the server per execution of a client-side program, and never more than one call per ordered pair of namespaces. If you need to make more than one call to the server, please run your script on weekends or between 9 pm and 5 am ET weekdays.\n
Failure to follow these guidelines may result in having your host machine banned from using this service.", 
appendLF = TRUE)
}
