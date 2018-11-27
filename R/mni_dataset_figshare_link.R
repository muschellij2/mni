#' Links from Figshare to MNI data
#'
#' @format A \code{data.frame} with columns
#' \describe{
#' \item{url}{download url MNI}
#' \item{name}{filename to download}
#' }
#' @examples
#' df = mni_datasets()
#' dim(df)
#' \dontrun{
#' df = dplyr::left_join(df, mni_dataset_figshare_link, by = "url")
#' head(df)
#' dim(df)
#' df = dplyr::left_join(df, mni_figshare, by = "name")
#' head(df)
#' dim(df)
#' }
#'
"mni_dataset_figshare_link"
