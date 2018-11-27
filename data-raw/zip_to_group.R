library(dplyr)
library(httr)
library(mni)
fig_df = mni_figshare

fname = "data/mni_dataset_figshare_link.rda"
if (!file.exists(fname)) {
  df = mni_datasets()
  df$url = sapply(df$group, mni_url)
  df$url = file.path(df$url, df$file)

  dl_file = function(url) {
    outfile = tempfile(fileext = ".zip")
    download.file(url = url, destfile = outfile)
    files = unzip(outfile, list = TRUE)
    file.remove(outfile)
    return(files)
  }
  all_files = sapply(df$url, dl_file)


  files = all_files["Name", ]
  names(files) = df$url
  files = lapply(files, function(x) {
    data_frame(name = x)
  })
  files = bind_rows(files, .id = "url")
  files = files %>%
    filter(grepl("[.]nii", name)) %>%
    mutate(
      name = basename(name),
      name = ifelse(grepl("[.]nii$", name),
                    paste0(name, ".gz"),
                    name))
  mni_dataset_figshare_link = files

  usethis::use_data(
    mni_dataset_figshare_link,
    compress = "xz", overwrite = TRUE)
} else {
  load(fname)
  df = mni_datasets()
  df$url = sapply(df$group, mni_url)
  df$url = file.path(df$url, df$file)
  sd = setdiff( mni_dataset_figshare_link$url, df$url)
  length(sd) == 0
  sd = setdiff(df$url, mni_dataset_figshare_link$url)
  length(sd) == 0
  sd

  sd = setdiff( mni_dataset_figshare_link$name, fig_df$name)
  length(sd) == 0
  sd
  sd = setdiff( fig_df$name, mni_dataset_figshare_link$name)
  length(sd) == 0
  sd
}
