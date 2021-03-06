#' Bonenburg geochemical dataset long format
#'
#' This is the same dataset but now the continuous variables (e.g. measurements)
#' are crossed with the variable del13Ctoc.
#'
#' @format A data frame with 486 rows and 11 variables:
#' \describe{
#'   \item{section}{Name of the section}
#'   \item{strat}{First order stratigraphic units}
#'   \item{strat2}{Second order stratigraphic units}
#'   \item{sampleid}{Assigned IDs}
#'   \item{del13Ctoc}{Carbon isotope composition of total organic carbon in units per mille relative to Vienna Peedee Belemnite}
#'   \item{measurement}{Type of measurement}
#'   \item{value}{Value of measurment}
#' }
#' @source https://www.schweizerbart.de/papers/nos/detail/52/90527/A_comparative_study_of_total_organic_carbon_d13C_signatures_in_the_Triassic_Jurassic_transitional_beds_of_the_Central_European_Basin_and_western_Tethys_shelf_seas
"bonenburg_cross"

