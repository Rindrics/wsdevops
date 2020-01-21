context("Check my_range() function")

test_that("numerics", {
  expect_equal(my_range(1:10), "1.0--10.0")
  expect_equal(my_range(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)), "1.0--10.0")
  expect_equal(my_range(c(1, 2, 3, 4, 12, 6, 7, 8, 9, 10)), "1.0--12.0")
  expect_equal(my_range(1:10 * 2), "2.0--20.0")
})
