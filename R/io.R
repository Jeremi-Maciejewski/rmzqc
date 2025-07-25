##
## Author: Chris Bielow
##

#'
#' Writes a full mzQC object to disk.
#'
#' You can in theory also provide any mzQC subelement,
#' but the resulting mzQC file will not validate since its incomplete.
#'
#' The filename should have '.mzQC' (case sensitive) as suffix. There will be a warning otherwise.
#'
#' @param filepath A filename (with optional path) to write to.
#' @param mzqc_obj An MzQCmzQC root object, which is serialized to JSON and then written to disk
#'
#' @export
#'
writeMZQC = function(filepath, mzqc_obj)
{

  if (!hasFileSuffix(filepath, ".mzQC")) {
    warning("'", filepath, "' does not end in '.mzQC'. Please fix the output filename.")
  }

  content = jsonlite::toJSON(mzqc_obj, pretty = TRUE, auto_unbox = TRUE)

  cat(content, '\n', file = filepath) ## write a final linebreak to avoid a warning from readLines when reading the file back
}

#'
#' Read a JSON file in mzQC format into an MzQCmzQC root object
#'
#' @param filepath A filename (with path) to read from.
#' @returns An MzQCmzQC root object from which all the data can be extracted/manipulated
#'
#' @export
#'
readMZQC = function(filepath)
{
  js = jsonlite::read_json(filepath)
  return(readMZQCFromJSON(js))
}


#'
#' Read a JSON object in mzQC format into an MzQCmzQC root object
#'
#' @param json_obj A generic R object (list of lists...)
#' @returns An MzQCmzQC root object from which all the data can be extracted/manipulated
#'
#' @export
#'
readMZQCFromJSON = function(json_obj)
{
  res = MzQCmzQC$new(version = "1.0.0",
                     creationDate = MzQCDateTime$new())
  return(res$fromData(json_obj))
}


