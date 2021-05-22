# get data Schobben et al. 2019
# XRF bonenburg
bonenburg_raw <- readr::read_csv(
  "https://raw.githubusercontent.com/MartinSchobben/bonenburg/master/supplement/data/organics/Bonenburg_d13C_toc.csv"
  )
readr::write_csv(bonenburg_raw, fs::path("inst/extdata/bonenburg_raw.csv"))
usethis::use_data(bonenburg_raw, overwrite = TRUE)

# palynology kuhjoch
kuhjoch_raw <- readr::read_csv(
  "https://raw.githubusercontent.com/MartinSchobben/bonenburg/master/supplement/data/palynomorphs/Kuhjoch_palyno.csv"
  )
readr::write_csv(kuhjoch_raw, fs::path("inst/extdata/kuhjoch_raw.csv"))
usethis::use_data(kuhjoch_raw, overwrite = TRUE)
