# load the source code of the functions to be tested
source("../functions/range-value.R")


# context with one test that groups expectations
context("Test for range value") 


test_that("range value for x", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})


test_that("range value for y", {
  y <- c(1, 2, 3, 4, NA)
  
  expect_equal(range_value(y), NA_real_)
  expect_length(range_value(y), 1)
})


test_that("range value for z", {
  z <- c(TRUE, FALSE, TRUE)
  
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')
  expect_equal(range_value(z), 1L)
})


test_that("range value stops for w", {
  w <- letters[1:5]
  
  expect_error(range_value(w))
})

# load the source code of the functions to be tested
source("../functions/missing-values.R")


# context with one test that groups expectations
context("Test for missing value") 


test_that("missing value", {
  x <- c(1, 2, 3, 4, 5)
  y <- c(1, 2, 3, 4, NA)
  z <- c(TRUE, FALSE, TRUE)
  w <- letters[1:5]
  
  expect_length(missing_values(x), 1)
  expect_gte(missing_values(x), 0)
  expect_type(missing_value(x), 'double')
  expect_length(missing_values(y), 1)
  expect_gte(missing_values(y), 0)
  expect_type(missing_value(y), 'double')
  expect_length(missing_values(z), 1)
  expect_gte(missing_values(z), 0)
  expect_type(missing_value(z), 'double')
  expect_length(missing_values(w), 1)
  expect_gte(missing_values(w), 0)
  expect_type(missing_value(w), 'double')
})

source("../functions/improved_range_value.R")
context("Test for improved range value function")
test_that("improved range value", { 
  y <- c(1, 2, 3, 4, NA)
  expect_gtel(improved_range_value(y),2)
  expect_length(improved_range_value(y),1)
  expect_type(improved_range_value(y),'double') 
})