context("Testing print_decimal() function")

test_that("works well for one-length vector", {
  expect_equal(print_decimal(1, 0), "1")
  expect_equal(print_decimal(1, 1), "1.0")
  expect_equal(print_decimal(1, 2), "1.00")
  expect_equal(print_decimal(1, 3), "1.000")
})

test_that("works well for multiple-length vector", {
  expect_equal(print_decimal(1:2, 0), c("1", "2"))
  expect_equal(print_decimal(1:3, 0), c("1", "2", "3"))

  expect_equal(print_decimal(1:2, 1), c("1.0", "2.0"))
  expect_equal(print_decimal(1:3, 1), c("1.0", "2.0", "3.0"))

  expect_equal(print_decimal(1:2, 2), c("1.00", "2.00"))
  expect_equal(print_decimal(1:3, 2), c("1.00", "2.00", "3.00"))

  expect_equal(print_decimal(1:2, 3), c("1.000", "2.000"))
  expect_equal(print_decimal(1:3, 3), c("1.000", "2.000", "3.000"))
})
