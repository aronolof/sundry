
<!-- README.md is generated from README.Rmd. Please edit that file -->

# sundry

<!-- badges: start -->
<!-- badges: end -->

A personal R package with convenience functions that may or may not be
useful.

## Installation

You can install this package like so:

``` r
devtools::install_github('aronolof/sundry')
```

## Examples

Here are a few examples of functions.

### Clamp complex numbers

``` r
library(sundry)

x <- c(2 + 2i, 10 - 5i, -3 + 8i)
clamp_complex(x, 0 + 0i, 3 + 3i)
#> [1] 2+2i 3+0i 0+3i
```
