#' MNI Download URL
#'
#' @param group Group of data, from \code{\link{mni_datasets}}
#' to get URL
#'
#' @return A character vector
#' @export
#'
#' @examples
#'
#' library(utils)
#' mni_url()
#' mni_url("pediatric")
#' df = mni_datasets()
#' df$url = sapply(df$group, mni_url)
#' df$url = file.path(df$url, df$file)
#'
#' destfile = tempfile(fileext = ".zip")
#' \dontrun{
#' dl = download.file(url = df$url[2], destfile = destfile)
#' }
#'
#' df = mni_datasets("minc1")
#' df$url = sapply(df$group, mni_url)
#' df$url = file.path(df$url, df$file)
#'
#' destfile = tempfile(fileext = ".zip")
#' \dontrun{
#' dl = download.file(url = df$url[2], destfile = destfile)
#' }
mni_url = function(
  group =
    c("icbm152", "PD25", "colin27", "mni305", "pediatric", "infant")
) {
  group = match.arg(group)
  url = switch(group,
               "icbm152" = "http://packages.bic.mni.mcgill.ca/mni-models",
               "PD25" = "http://packages.bic.mni.mcgill.ca/mni-models",
               "colin27" = "http://packages.bic.mni.mcgill.ca/mni-models",
               "mni305" = "http://packages.bic.mni.mcgill.ca/mni-models",
               "pediatric" = "http://www.bic.mni.mcgill.ca/~vfonov/nihpd",
               "infant" = "http://www.bic.mni.mcgill.ca/~vfonov/nihpd"
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

