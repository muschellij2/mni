testthat::context("Figshare downloads")
data("mni_figshare")

df = mni_figshare

testthat::test_that("httr::HEAD returns 200 for Figshare", {

  results = sapply(df$download_url, function(url) {
    res = httr::HEAD(url)
    testthat::expect_lte(httr::status_code(res), 400)
  })
  testthat::expect_true(all(results == 200))
})


