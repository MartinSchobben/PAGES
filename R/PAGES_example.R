#' Get path to PAGES example
#'
#' This function comes from the package `readr`, and has been modified to access
#' the bundled datatsets in directory `inst/extdata` of `PAGES`. This
#' function make them easy to access. This function is modified from
#' \code{\link[readr:readr_example]{readr_example}} of the package
#' \code{\link[readr]{readr}}.
#'
#' @param path Name of file. If `NULL`, the example files will be listed.
#' @export
#' @examples
#' PAGES_example()
#' PAGES_example("bonenburg_raw.csv")
PAGES_example <- function(path = NULL) {
  if (is.null(path)) {
    dir(system.file("extdata", package = "PAGES"))
  } else {
    system.file("extdata", path, package = "PAGES", mustWork = TRUE)
  }
}
