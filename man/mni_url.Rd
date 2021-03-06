% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mni_url.R
\name{mni_url}
\alias{mni_url}
\alias{mni_urls}
\title{MNI Download URL}
\usage{
mni_url(group = c("icbm152", "PD25", "colin27", "mni305", "pediatric",
  "infant"))

mni_urls()
}
\arguments{
\item{group}{Group of data, from \code{\link{mni_datasets}}
to get URL}
}
\value{
A character vector
}
\description{
MNI Download URL
}
\examples{

library(utils)
mni_url()
mni_url("pediatric")
df = mni_datasets()
df$url = sapply(df$group, mni_url)
df$url = file.path(df$url, df$file)

destfile = tempfile(fileext = ".zip")
\dontrun{
dl = download.file(url = df$url[2], destfile = destfile)
}

df = mni_datasets("minc1")
df$url = sapply(df$group, mni_url)
df$url = file.path(df$url, df$file)

destfile = tempfile(fileext = ".zip")
\dontrun{
dl = download.file(url = df$url[2], destfile = destfile)
}
}
