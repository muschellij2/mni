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

testthat::test_that("httr::HEAD returns 200", {

  df = mni_datasets()
  df$url = sapply(df$group, mni_url)
  df$url = file.path(df$url, df$file)

  results = sapply(df$url, function(url) {
    res = httr::HEAD(url)
    testthat::expect_lte(httr::status_code(res), 400)
  })
  testthat::expect_true(all(results == 200))
})


