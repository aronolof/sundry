#' Clamp complex numbers
#'
#' Clamp the real and imaginary parts of complex numbers to values between the respective lower and upper bounds.
#'
#' @param x A vector of complex numbers with one or more elements.
#' @param lower The lower bound.
#' @param upper The upper bound.
#'
#' @return A vector of complex numbers.
#' @export
#'
#' @examples
#' clamp_complex(3 + 3i, 1 + 4i, 2 + 5i)
clamp_complex <- function(x,
                          lower = complex(real = -Inf, imaginary = -Inf),
                          upper = complex(real = Inf, imaginary = Inf)) {

  # Extract the real and imaginary parts of the values and bounds
  re <- Re(x)
  im <- Im(x)
  re_lower <- Re(lower)
  re_upper <- Re(upper)
  im_lower <- Im(lower)
  im_upper <- Im(upper)

  stopifnot(re_lower <= re_upper)
  stopifnot(im_lower <= im_upper)

  # Clamp the real and imaginary parts to the specified range
  re <- pmax(pmin(re, re_upper), re_lower)
  im <- pmax(pmin(im, im_upper), im_lower)

  # Return the clamped complex number
  return(complex(real = re, imaginary = im))
}
