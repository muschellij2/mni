library(rfigshare)
res = fs_details(7335242)

files = res$files
files = lapply(files, function(file) {
  file = lapply(file, function(r) {
    if (is.null(r)) {
      r = NA
    }
    return(r)
  })
  as.data.frame(file, stringsAsFactors = FALSE)
})
files = do.call(rbind, files)
files = files[, c("download_url", "name", "id", "size")]
mni_figshare = files

usethis::use_data(mni_figshare, compress = "xz", overwrite = TRUE)
