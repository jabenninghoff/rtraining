# these tests currently run against the files in tests/testthat : this is potentially dangerous
# and should be changed
test_that("returns the correct type", {
  expect_equal(typeof(lint_all()), "list")
})

test_that("returns the correct class", {
  expect_equal(class(lint_all()), "lints")
})
