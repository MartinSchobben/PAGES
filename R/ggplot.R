#' Common ggplot functions used in PAGES seminar
#'
#' @description
#'
#' * \code{\link[ggplot2:ggplot]{ggplot}()} initializes a ggplot object.
#'
#' * \code{\link[ggplot2:aes]{aes}()} Aesthetic mappings describe how
#'   variables in the data are mapped to visual properties (aesthetics) of
#'   geoms.
#'
#' * \code{\link[ggplot2:geom_point]{geom_point}()} The point geom is used to
#'   create scatterplots.
#'
#' * \code{\link[ggplot2:geom_area]{geom_area}()} For each x value,
#'   `geom_area()` displays a y interval defined by 0 and ymax (or 0 and xmax).
#'
#' * \code{\link[ggplot2:geom_smooth]{geom_smooth}()} For detecting patterns in
#'   data.
#'
#' * \code{\link[ggplot2:geom_boxplot]{geom_boxplot}()} The boxplot compactly
#'   displays the distribution of a continuous variable.
#'
#' * \code{\link[ggplot2:facet_grid]{facet_grid}()} forms a matrix of panels
#'   defined by row and column faceting variables.
#'
#' * \code{\link[ggplot2:facet_wrap]{facet_wrap}()} wraps a 1d sequence of
#'   panels into 2d.
#'
#' * \code{\link[ggplot2:vars]{vars}()} Just like `aes()`, `vars()` is a quoting
#'   function that takes inputs to be evaluated in the context of a dataset.
#'
#' To learn more about ggplot2 \url{https://r4ds.had.co.nz/index.html} and
#' \url{http://www.cookbook-r.com/Graphs/}
#'
#' @md
#' @name ggplot2
#' @keywords internal
#' @importFrom ggplot2 ggplot aes facet_wrap facet_grid geom_point geom_area geom_boxplot geom_smooth vars theme_set theme_classic
#' @aliases ggplot aes facet_wrap facet_grid geom_point geom_area geom_boxplot geom_smooth vars
#' @export ggplot aes facet_wrap facet_grid geom_point geom_area geom_boxplot geom_smooth vars
NULL
