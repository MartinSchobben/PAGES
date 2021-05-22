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

usethis::use_data(bonenburg, overwrite = TRUE)

# long format for stratigraphic plots
bonenburg_long <- tidyr::pivot_longer(
  bonenburg,
  -c(Section, Strat, Strat2, SampleID, Height),
  names_to = "measurement"
  )
# save
usethis::use_data(bonenburg_long, overwrite = TRUE)

# crossed format for stratigraphic plots
bonenburg_cross <- tidyr::pivot_longer(
  bonenburg,
  -c(Section, Strat, Strat2, SampleID, del13Ctoc),
  names_to = "measurement"
)
# save
usethis::use_data(bonenburg_cross, overwrite = TRUE)
