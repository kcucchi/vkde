library('vkde')

test_that("dimensions of bw_sampleSmoothing are correct", {
  expect_equal(length(bw_sampleSmoothing(tdat = 1:10,k = 3)),
               length(1:10))
  expect_equal(bw_sampleSmoothing(tdat = 1:5,k = 3),c(3,2,2,2,3))
  expect_equal(bw_sampleSmoothing(
    tdat = rbind(rep(0,4),1:4),
    k = 1),rep(1,4))
})
