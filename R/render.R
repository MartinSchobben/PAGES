#' Render slides of PAGES presentation
#'
#' This function allows rendering of the rmarkdown ioslides used for the
#' presentation
#'
#' @param output_dir where to locate the output HTML file.
#' @export
render_slides <- function(output_dir = "."){
  slides <- system.file(
    "presentation",
    "geoR_slides.Rmd",
    package = "PAGES",
    mustWork = TRUE
    )
  rmarkdown::render(slides, output_dir = output_dir)
}
