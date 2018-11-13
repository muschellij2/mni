testthat::context("Download a file")

testthat::test_that("Download one file from the each repo", {

  df = mni_datasets()
  df$url = sapply(df$group, mni_url)
  df$url = file.path(df$url, df$file)
  url = df$url[ grep("6th", df$name)]

  destfile = tempfile(fileext = ".zip")
  dl = download.file(url = df$url[2], destfile = destfile)
  testthat::expect_equal(dl, 0)
})
