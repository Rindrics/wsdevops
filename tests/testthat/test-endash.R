context("Catenate by endash")

test_that("works well", {
  expect_equal(cat_endash("a", "b"), "a--b")
  expect_equal(cat_endash("1.0", "2.0"), "1.0--2.0")
  expect_equal(cat_endash("1", "2"), "1--2")
})

test_that("return error when passed numerics", {
  msg <- "Give me character args"
  expect_error(cat_endash(1, 2), msg)
  expect_error(cat_endash("1", 2), msg)
  expect_error(cat_endash(1, "2"), msg)
})

test_that("return error when passed two-length vector", {
  expect_error(expect_equal(cat_endash(c("1", "2")), "1--2"))
})
