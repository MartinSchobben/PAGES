# tidy the data set with tidyverse

# geochemistry with 108 observations
bonenburg_tidy <- dplyr::select(bonenburg_raw, -Reference) %>%
  dplyr::rename_with(
    ~stringr::str_to_lower(.x),
    c(Height, Section, Strat, Strat2, SampleID)
    ) %>%
  dplyr::rename_with(
    ~stringr::str_replace(.x, " \\(%\\)", "_pc"),
    contains("%")
    ) %>%
  tidyr::drop_na()

# reorder variables
bonenburg_tidy <- dplyr::relocate(bonenburg_tidy, c(section, strat, strat2))

# save and remove
usethis::use_data(bonenburg_tidy, overwrite = TRUE)
readr::write_csv(bonenburg_tidy, fs::path("inst/extdata/bonenburg_tidy.csv"))
file.remove("data/bonenburg_raw.rda")

# palynology with 147 observations
kuhjoch <- dplyr::select(kuhjoch_raw, -c(Reference, Reference2))

# names pollen
pollen_nm <- colnames(kuhjoch)[78:112]
# names spores
spores_nm <- colnames(kuhjoch)[3:77]
# names aquatic elements
aquatic_nm <- colnames(kuhjoch)[113:137]
aquatic_nm <- aquatic_nm[aquatic_nm != "Dino contamination"]

kuhjoch <- dplyr::rowwise(kuhjoch) %>%
  dplyr::transmute(
   height = Height,
   landplant_pollen = sum(dplyr::c_across(any_of(pollen_nm)), na.rm = TRUE),
   landplant_spores = sum(dplyr::c_across(any_of(spores_nm)), na.rm = TRUE),
   environment_aquatic = sum(dplyr::c_across(any_of(aquatic_nm)), na.rm = TRUE)
   ) %>%
  dplyr::mutate(
    environment_terrestrial = landplant_pollen + landplant_spores,
    dplyr::across(-height, as.integer)
    ) %>%
  dplyr::ungroup()

# save
usethis::use_data(kuhjoch, overwrite = TRUE)
readr::write_csv(kuhjoch, fs::path("inst/extdata/kuhjoch.csv"))

# long format
kuhjoch_long <- tidyr::pivot_longer(
  kuhjoch,
  -height,
  names_to = c("type", "label"),
  values_to = "count",
  names_sep = "_"
  )

# save and remove
usethis::use_data(kuhjoch_long, overwrite = TRUE)
readr::write_csv(kuhjoch_long, fs::path("inst/extdata/kuhjoch_long.csv"))
file.remove("data/kuhjoch_raw.rda")
