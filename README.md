
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggsegDesterieux

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/LCBC-UiO/ggsegDesterieux.svg?branch=master)](https://travis-ci.org/LCBC-UiO/ggsegDesterieux)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/LCBC-UiO/ggsegDesterieux?branch=master&svg=true)](https://ci.appveyor.com/project/LCBC-UiO/ggsegDesterieux)
[![Codecov test
coverage](https://codecov.io/gh/LCBC-UiO/ggsegDesterieux/branch/master/graph/badge.svg)](https://codecov.io/gh/LCBC-UiO/ggsegDesterieux?branch=master)
<!-- badges: end -->

This package contains dataset for plotting the Desterieux cortical atlas
ggseg and ggseg3d.

## Installation

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

<!-- ```{r} -->

<!-- library(ggseg) -->

<!-- ggseg(atlas = desterieux, mapping = aes(fill = region)) + -->

<!--   scale_fill_brain("tracula", package = "ggsegTracula") + -->

<!--   theme(legend.position = "bottom",  -->

<!--         legend.text = element_text(size = 9)) + -->

<!--   guides(fill = guide_legend(ncol = 3)) -->

<!-- ``` -->

``` r
library(ggseg3d)

ggseg3d(atlas = desterieux_3d) %>% 
  pan_camera("right lateral")
```

<!-- ```{r "orca", include=FALSE} -->

<!-- library(ggseg3d) -->

<!-- p <- ggseg3d(atlas = desterieux_3d) %>% -->

<!--   pan_camera("right lateral") %>% -->

<!--   plotly::add_annotations( text="Screen capture", -->

<!--                   legendtitle=TRUE, showarrow=FALSE, -->

<!--                   font = list(color = "#000000b4", -->

<!--                               family = 'sans serif', -->

<!--                               size = 50)) -->

<!-- plotly::orca(p, "man/figures/README-3d-plot.png") -->

<!-- ``` -->

<img src="man/figures/README-3d-plot.png" width="100%" />

Please note that the ‘ggsegDesterieux’ project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to
this project, you agree to abide by its terms.
