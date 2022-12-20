test_that("clamp_complex works", {

  expect_equal(clamp_complex(1:4, 2, 3),
               c(2+0i, 2+0i, 3+0i, 3+0i))

  expect_equal(clamp_complex(2:4 * 1i, 2 + 3i, 3 + 4i),
               c(2+3i, 2+3i, 2+4i))

  x <- 1:3 + 1:3 * 1i
  expect_equal(clamp_complex(x, x, x),
               x)
})
