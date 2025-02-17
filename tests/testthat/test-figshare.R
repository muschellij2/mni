testthat::context("Figshare downloads")
env = new.env()
data("mni_figshare", envir = env, package = "mni")

df = env$mni_figshare

testthat::test_that("httr::HEAD returns 200 for Figshare", {

  results = sapply(df$download_url, function(url) {
    res = httr::HEAD(strsplit(httr::HEAD(url)$url, split="[?]")[[1]][1])
    testthat::expect_lte(httr::status_code(res), 400)
  })
  testthat::expect_true(all(results == 200))
})


