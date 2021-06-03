
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggsegDesterieux <img src='man/figures/logo.png' align="right" height="138.5" />

<!-- badges: start -->

[![DOI](https://zenodo.org/badge/250272332.svg)](https://zenodo.org/badge/latestdoi/250272332)
[![Codecov test
coverage](https://codecov.io/gh/LCBC-UiO/ggsegDesterieux/branch/master/graph/badge.svg)](https://codecov.io/gh/LCBC-UiO/ggsegDesterieux?branch=master)
[![R build
status](https://github.com/LCBC-UiO/ggsegDesterieux/workflows/R-CMD-check/badge.svg)](https://github.com/LCBC-UiO/ggsegDesterieux/actions)
<!-- badges: end -->

This package contains dataset for plotting the Desterieux cortical atlas
ggseg and ggseg3d.

Desterieux, Fischl, Dale,& Halgren (2010) Neuroimage. 53(1): 1–15. doi:
[0.1016/j.neuroimage.2010.06.010](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2937159/)

## Installation

We recommend installing the ggseg-atlases through the ggseg
[r-universe](https://ggseg.r-universe.dev/ui#builds):

``` r
# Enable this universe
options(repos = c(
    ggseg = 'https://ggseg.r-universe.dev',
    CRAN = 'https://cloud.r-project.org'))

# Install some packages
install.packages('ggsegDesterieux')
```

You can install the released version version from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("LCBC-UiO/ggsegDesterieux")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ggsegDesterieux)
```

``` r
library(ggseg)
library(ggplot2)

plot(desterieux) +
  theme(legend.position = "bottom",
        legend.text = element_text(size = 7)) +
  guides(fill = guide_legend(ncol = 3))
```

<img src="man/figures/README-unnamed-chunk-5-1.png" width="100%" />

``` r
library(ggseg3d)
library(dplyr)

ggseg3d(atlas = desterieux_3d) %>% 
  pan_camera("right lateral")
```

<img src="man/figures/README-3d-plot.png" width="100%" />

Please note that the ‘ggsegDesterieux’ project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to
this project, you agree to abide by its terms.
