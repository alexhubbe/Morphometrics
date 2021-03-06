#' Bootstrap analysis via ressampling
#'
#'
#'   Calculates the repeatability of the covariance matrix of the suplied data
#'   via bootstrap ressampling
#'
#'   Samples with replacement are taken from the full population, a statistic calculated
#'   and compared to the full population statistic via Krzanowsky correlation.
#'
#' @param ind.data Matrix of residuals or indiviual measurments
#' @param iterations Number of ressamples to take
#' @param correlation If TRUE, correlation matrix is used, else covariance matrix
#' @param num.cores Number of threads to use in computation. Requires doMC library.
#' @return returns the mean repeatability, or mean value of comparisons from samples to original statistic.
#' @author Diogo Melo, Guilherme Garcia
#' @seealso \code{\link{MonteCarloStat}}, \code{\link{AlphaRep}}, \code{\link{BootstrapRep}}, \code{\link{BootstrapRepMantelCor}}, \code{\link{BootstrapRepRandomSkewers}}
#' @export
#' @examples
#'
#' BootstrapRepKrzCor(iris[,1:4], 50)
#'
#' BootstrapRepKrzCor(iris[,1:4], 50, TRUE)
#'
#' @keywords bootstrap
#' @keywords repetabilities

BootstrapRepKrzCor <- function(ind.data, iterations = 1000, correlation = F, num.cores = 1){
  if(correlation)  StatFunc <- cor
  else             StatFunc <- cov
  repeatability <- BootstrapRep(ind.data, iterations,
                                ComparisonFunc = KrzCor,
                                StatFunc = StatFunc,
                                num.cores = num.cores)
  return(mean(repeatability))
}
