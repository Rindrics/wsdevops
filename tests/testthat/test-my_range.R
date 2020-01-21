context("Check range4table() function")

test_that("works well", {
  expect_equal(range4table(1:10), "1.0--10.0")
  expect_equal(range4table(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)), "1.0--10.0")
  expect_equal(range4table(c(1, 2, 3, 4, 12, 6, 7, 8, 9, 10)), "1.0--12.0")
  expect_equal(range4table(1:10 * 2), "2.0--20.0")
})

test_that("print two digits under decimal point", {
  expect_equal(range4table(1:10, 2), "1.00--10.00")
  expect_equal(range4table(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), 2), "1.00--10.00")
  expect_equal(range4table(c(1, 2, 3, 4, 12, 6, 7, 8, 9, 10), 2), "1.00--12.00")
  expect_equal(range4table(1:10 * 2, 2), "2.00--20.00")
})
