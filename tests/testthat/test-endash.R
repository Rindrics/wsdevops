context("Catenate by endash")

test_that("catenate two-length vector", {
  expect_equal(catenate_by_endash(c(1, 2)), "1.0--2.0")
  expect_error(expect_equal(catenate_by_endash(1, 2), "1--2"))

  expect_equal(catenate_by_endash(c(1, 2, 3)), "1.0--2.0") # 通っちゃう
  expect_equal(catenate_by_endash(1:10), "1.0--2.0") # 通っちゃう
})

test_that("decimal point", {
  expect_equal(catenate_by_endash(c(1, 2)), "1.0--2.0")
  expect_equal(catenate_by_endash(c(10, 20)), "10.0--20.0")
  expect_equal(catenate_by_endash(c(0.01, 0.02)), "0.0--0.0") # 実装がよくない
  expect_error(expect_equal(catenate_by_endash(c(1, 2)), "1--2"))
})
