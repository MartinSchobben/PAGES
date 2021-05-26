# transformations mainly apply to XRF element data

# oxide to element conversion
bonenburg <- dplyr::mutate(
  bonenburg_tidy,
  Al_pc = Al2O3_pc * with(marelac::atomicweight, 2 * Al / (2 * Al + 3 * O)),
  Na_pc = Na2O_pc * with(marelac::atomicweight, Na / (Na + 2 * O)),
  K_pc = K2O_pc * with(marelac::atomicweight, K / (K + 2 * O)),
  .keep = "unused"
  ) %>%
# normalization with Al
  dplyr::mutate(
    dplyr::across(c(Na_pc, K_pc), ~.x / Al_pc, .names = "{gsub(\"pc\", \"\", .col)}Al"),
  .keep = "unused"
  )

# save
usethis::use_data(bonenburg, overwrite = TRUE)
readr::write_csv(bonenburg, fs::path("inst/extdata/bonenburg.csv"))

# long format for stratigraphic plots
bonenburg_long <- tidyr::pivot_longer(
  bonenburg,
  -c(section, strat, strat2, sampleid, height),
  names_to = "measurement"
  )

# save
usethis::use_data(bonenburg_long, overwrite = TRUE)
readr::write_csv(bonenburg_long, fs::path("inst/extdata/bonenburg_long.csv"))

# crossed format for covariate plot
bonenburg_cross <- tidyr::pivot_longer(
  bonenburg,
  -c(section, strat, strat2, sampleid, del13Ctoc),
  names_to = "measurement"
  )

# save
usethis::use_data(bonenburg_cross, overwrite = TRUE)
readr::write_csv(bonenburg_cross, fs::path("inst/extdata/bonenburg_cross.csv"))
