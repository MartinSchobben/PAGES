
<!-- README.md is generated from README.Rmd. Please edit that file -->

# PAGES

<!-- badges: start -->
<!-- badges: end -->

The goal of PAGES is to …

## Credits

The construction of the R (R Core Team 2021) package *point* and
associated documentation was aided by the packages; *devtools* (Wickham,
Hester, and Chang 2021), *roxygen2* (Wickham et al. 2020), *knitr* (Xie
2014, 2015), *rmarkdown* (Xie, Allaire, and Grolemund 2018; Xie,
Dervieux, and Riederer 2020) and the superb guidance in the book: *R
packages: organize, test, document, and share your code*, by Wickham
(2015). In addition, this package relies on a set of external packages
from the tidyverse universe, including: *dplyr* (Wickham et al. 2021),
*tidyr* (Wickham 2021), *tibble* (Müller and Wickham 2021), *stringr*
(Wickham 2019), *readr* (Wickham and Hester 2020), *magrittr* (Bache and
Wickham 2020), *readr* (Wickham and Hester 2020), and *purrr* (Henry and
Wickham 2020). Plots are made with *ggplot2* (Wickham 2016) and
*thematic* (Sievert, Schloerke, and Cheng 2021) is used for a consistent
design in the presentation.

## Installation

You can install the released version of PAGES from
[github](https://github.io) with:

``` r
# Install point from GitHub:
# install.packages("devtools")
devtools::install_github("MartinSchobben/PAGES")
```

## Usage

Load point with `library`.

``` r
library(PAGES)
library(tidyverse)
#> ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.1 ──
#> ✓ ggplot2 3.3.3     ✓ purrr   0.3.4
#> ✓ tibble  3.1.2     ✓ dplyr   1.0.6
#> ✓ tidyr   1.1.3     ✓ stringr 1.4.0
#> ✓ readr   1.4.0     ✓ forcats 0.5.1
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> x dplyr::filter() masks stats::filter()
#> x dplyr::lag()    masks stats::lag()
```

## Data sources

The study on the Triassic–Jurassic (\~201 Ma) boundary section of
Bonenburg (Germany) by Schobben et al. (2019) is used as the example
dataset in this course.

## Tidy format

A tidy format was created from the source files (look-up directory
`data-raw` for details.).

``` r
head(bonenburg)
#> # A tibble: 6 x 11
#>   Section Strat Strat2 SampleID Height CaCO3    TN del13Ctoc TOCcfb  Na_Al  K_Al
#>   <chr>   <chr> <chr>     <dbl>  <dbl> <dbl> <dbl>     <dbl>  <dbl>  <dbl> <dbl>
#> 1 Bonenb… Cont… Pre-e…        0   3.01 13.3   0.06     -27.5   1.16 0.0314 0.216
#> 2 Bonenb… Cont… Pre-e…      100   3.95  3.84  0.07     -27.3   0.96 0.0250 0.211
#> 3 Bonenb… Cont… Pre-e…      150   4.43  5.86  0.07     -27     1.25 0.0197 0.224
#> 4 Bonenb… Cont… Pre-e…      200   4.94 12.8   0.07     -27.8   1.52 0.0231 0.236
#> 5 Bonenb… Cont… Pre-e…      250   5.25  3.34  0.09     -27.6   2.45 0.0330 0.243
#> 6 Bonenb… Cont… Pre-e…      275   5.68  9.91  0.06     -27     1.19 0.0201 0.251
```

``` r
ggplot(data = bonenburg_long, aes(x = value, y = Height)) +
  geom_line(orientation = "y") +
  facet_grid(cols = vars(measurement), scales = "free_x") +
  theme_classic()
```

<img src="man/figures/README-strat-1.png" width="100%" />

# References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-magrittr" class="csl-entry">

Bache, Stefan Milton, and Hadley Wickham. 2020. *Magrittr: A
Forward-Pipe Operator for r*.
<https://CRAN.R-project.org/package=magrittr>.

</div>

<div id="ref-purrr" class="csl-entry">

Henry, Lionel, and Hadley Wickham. 2020. *Purrr: Functional Programming
Tools*. <https://CRAN.R-project.org/package=purrr>.

</div>

<div id="ref-tibble" class="csl-entry">

Müller, Kirill, and Hadley Wickham. 2021. *Tibble: Simple Data Frames*.
<https://CRAN.R-project.org/package=tibble>.

</div>

<div id="ref-rversion" class="csl-entry">

R Core Team. 2021. *R: A Language and Environment for Statistical
Computing*. Vienna, Austria: R Foundation for Statistical Computing.
<https://www.R-project.org/>.

</div>

<div id="ref-Schobben2019" class="csl-entry">

Schobben, Martin, Julia Gravendyck, Franziska Mangels, Ulrich Struck,
Robert Bussert, Wolfram M. Kürschner, Dieter Korn, P. Martin Sander, and
Martin Aberhan. 2019. “<span class="nocase">A comparative study of total
organic carbon-*δ*13C signatures in the Triassic–Jurassic transitional
beds of the Central European Basin and western Tethys shelf
seas</span>.” *Newsletters on Stratigraphy* 52 (4): 461–86.
<https://doi.org/10.1127/nos/2019/0499>.

</div>

<div id="ref-thematic" class="csl-entry">

Sievert, Carson, Barret Schloerke, and Joe Cheng. 2021. *Thematic:
Unified and Automatic Theming of Ggplot2, Lattice, and Base r Graphics*.
<https://CRAN.R-project.org/package=thematic>.

</div>

<div id="ref-Wickham2015" class="csl-entry">

Wickham, Hadley. 2015. *R Packages: Organize, Test, Document, and Share
Your Code*. O’Reilly Media, Inc. <https://r-pkgs.org/>.

</div>

<div id="ref-ggplot22016" class="csl-entry">

———. 2016. *Ggplot2: Elegant Graphics for Data Analysis*.
Springer-Verlag New York. <https://ggplot2.tidyverse.org>.

</div>

<div id="ref-stringr" class="csl-entry">

———. 2019. *Stringr: Simple, Consistent Wrappers for Common String
Operations*. <https://CRAN.R-project.org/package=stringr>.

</div>

<div id="ref-tidyr" class="csl-entry">

———. 2021. *Tidyr: Tidy Messy Data*.
<https://CRAN.R-project.org/package=tidyr>.

</div>

<div id="ref-roxygen2" class="csl-entry">

Wickham, Hadley, Peter Danenberg, Gábor Csárdi, and Manuel Eugster.
2020. *Roxygen2: In-Line Documentation for r*.
<https://CRAN.R-project.org/package=roxygen2>.

</div>

<div id="ref-dplyr" class="csl-entry">

Wickham, Hadley, Romain François, Lionel Henry, and Kirill Müller. 2021.
*Dplyr: A Grammar of Data Manipulation*.
<https://CRAN.R-project.org/package=dplyr>.

</div>

<div id="ref-readr" class="csl-entry">

Wickham, Hadley, and Jim Hester. 2020. *Readr: Read Rectangular Text
Data*. <https://CRAN.R-project.org/package=readr>.

</div>

<div id="ref-devtools" class="csl-entry">

Wickham, Hadley, Jim Hester, and Winston Chang. 2021. *Devtools: Tools
to Make Developing r Packages Easier*.
<https://CRAN.R-project.org/package=devtools>.

</div>

<div id="ref-knitr2014" class="csl-entry">

Xie, Yihui. 2014. “Knitr: A Comprehensive Tool for Reproducible Research
in R.” In *Implementing Reproducible Computational Research*, edited by
Victoria Stodden, Friedrich Leisch, and Roger D. Peng. Chapman;
Hall/CRC. <http://www.crcpress.com/product/isbn/9781466561595>.

</div>

<div id="ref-knitr2015" class="csl-entry">

———. 2015. *Dynamic Documents with R and Knitr*. 2nd ed. Boca Raton,
Florida: Chapman; Hall/CRC. <https://yihui.org/knitr/>.

</div>

<div id="ref-rmarkdown2018" class="csl-entry">

Xie, Yihui, J. J. Allaire, and Garrett Grolemund. 2018. *R Markdown: The
Definitive Guide*. Boca Raton, Florida: Chapman; Hall/CRC.
<https://bookdown.org/yihui/rmarkdown>.

</div>

<div id="ref-rmarkdown2020" class="csl-entry">

Xie, Yihui, Christophe Dervieux, and Emily Riederer. 2020. *R Markdown
Cookbook*. Boca Raton, Florida: Chapman; Hall/CRC.
<https://bookdown.org/yihui/rmarkdown-cookbook>.

</div>

</div>
