test_that("KrzProjection returns correct results",
          {
            cov.matrix.1 <- RandCorr(10)
            cov.matrix.2 <- RandCorr(10)
            expect_that(dim(KrzProjection(cov.matrix.1, cov.matrix.2)), equals(NULL))
            expect_that(length(KrzProjection(cov.matrix.1, cov.matrix.2)), equals(2))
            expect_that(length(KrzProjection(cov.matrix.1,
                                             cov.matrix.2,
                                             ret.dim.1 = 3)[[2]]),
                        equals(3))
            expect_that(length(KrzProjection(cov.matrix.1,
                                             cov.matrix.2,
                                             ret.dim.1 = 5)[[2]]),
                        equals(5))
            expect_that(length(KrzProjection(cov.matrix.1,
                                             cov.matrix.2,
                                             ret.dim.2 = 10)[[2]]),
                        equals(4))
            expect_that(KrzProjection(cov.matrix.1,
                                      cov.matrix.2,
                                      ret.dim.1 = 10, ret.dim = 10)[[1]],
                        equals(1))
            per.PC <- KrzProjection(cov.matrix.1, cov.matrix.2, ret.dim.1 = 10, ret.dim = 10)[[2]]
            ones = sapply(per.PC, function(x) isTRUE(all.equal(x, 1)))
            expect_that(sum(ones), equals(10))
          }
)

test_that("KrzProjection returns correct results",
          {
            mat.list <- lapply(as.list(1:10), function(x) RandCorr(10))
            expect_that(dim(KrzProjection(mat.list)), equals(c(length(mat.list), length(mat.list))))
            expect_that(diag(KrzProjection(mat.list)), is_equivalent_to(rep(0, length(mat.list))))
            expect_that(KrzProjection(mat.list)[1,2], equals(KrzProjection(mat.list[[1]], mat.list[[2]])[[1]]))
            expect_that(KrzProjection(mat.list)[2,1], equals(KrzProjection(mat.list[[2]], mat.list[[1]])[[1]]))
            expect_that(length(KrzProjection(mat.list, full.results = T)), equals(length(mat.list)))
            expect_that(dim(KrzProjection(mat.list, full.results = T)), equals(NULL))
          }
)


