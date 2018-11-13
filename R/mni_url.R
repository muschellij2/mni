#' MNI Download URL
#'
#' @param group Group of data, from \code{\link{mni_datasets}}
#' to get URL
#'
#' @return A character vector
#' @export
#'
#' @examples
#' mni_url()
#' mni_url("obj1")
mni_url = function(
  group =
    c("icbm152", "PD25", "colin27", "mni305", "obj1", "obj2")
) {
  group = match.arg(group)
  url = switch(group,
               "icbm152" = "http://packages.bic.mni.mcgill.ca/mni-models/",
               "PD25" = "http://packages.bic.mni.mcgill.ca/mni-models/",
               "colin27" = "http://packages.bic.mni.mcgill.ca/mni-models/",
               "mni305" = "http://packages.bic.mni.mcgill.ca/mni-models/",
               "obj1" = "http://www.bic.mni.mcgill.ca/~vfonov/nihpd/",
               "obj12" = "http://www.bic.mni.mcgill.ca/~vfonov/nihpd/"
  )
  return(url)
}

#' @export
#' @rdname mni_url
mni_urls = function() {
  c("http://packages.bic.mni.mcgill.ca/mni-models/",
    "http://www.bic.mni.mcgill.ca/~vfonov/nihpd/obj1/",
    "http://www.bic.mni.mcgill.ca/~vfonov/nihpd/obj2/")
}

