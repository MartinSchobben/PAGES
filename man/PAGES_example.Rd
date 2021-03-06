% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PAGES_example.R
\name{PAGES_example}
\alias{PAGES_example}
\title{Get path to PAGES example}
\usage{
PAGES_example(path = NULL)
}
\arguments{
\item{path}{Name of file. If \code{NULL}, the example files will be listed.}
}
\description{
This function comes from the package \code{readr}, and has been modified to access
the bundled datatsets in directory \code{inst/extdata} of \code{PAGES}. This
function make them easy to access. This function is modified from
\code{\link[readr:readr_example]{readr_example}} of the package
\code{\link[readr]{readr}}.
}
\examples{
PAGES_example()
PAGES_example("bonenburg_raw.csv")
}
