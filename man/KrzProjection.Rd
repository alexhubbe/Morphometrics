\name{KrzProjection}
\alias{KrzProjection}
\alias{KrzProjection.default}
\alias{KrzProjection.list}
\title{Compare matrices via Modified Krzanowski Correlation}
\usage{
  KrzProjection(cov.x, cov.y, ...)

  \method{KrzProjection}{default} (cov.x, cov.y,
    ret.dim.1 = NULL, ret.dim.2 = NULL, ...)

  \method{KrzProjection}{list} (cov.x, cov.y = NULL,
    ret.dim.1 = NULL, ret.dim.2 = NULL, num.cores = 1,
    full.results = FALSE, ...)
}
\arguments{
  \item{cov.x}{Single covariance matrix ou list of
  covariance matrices. If single matrix is suplied, it is
  compared to cov.y. If list is suplied and no cov.y is
  suplied, all matrices are compared. If cov.y is suplied,
  all matrices in list are compared to it.}

  \item{...}{aditional arguments passed to other methods}

  \item{cov.y}{First argument is compared to cov.y. If
  cov.x is a list, every element in cov.x is projected in
  cov.y.}

  \item{ret.dim.1}{number of retained dimensions for first
  matrix in the comparison,}

  \item{ret.dim.2}{number of retained dimensions for second
  matrix in the comparison, default for nxn matrix is
  n/2-1}

  \item{num.cores}{If list is passed, number of threads to
  use in computation. Requires doMC library.}

  \item{full.results}{if FALSE returns only total variance,
  if TRUE also per PC variance.}
}
\value{
  Ratio of projected variance to total variance, and ratio
  of projectecd total in each PC
}
\description{
  Calculates the modified Krzanowski correlation between
  matrices, projecting the variance in each principal
  components of the first matrix in to the ret.dim.2
  components of the second for a list of matrices
}
\examples{
c1 <- RandomMatrix(10)
c2 <- RandomMatrix(10)
KrzProjection(c1, c2)

m.list <- RandomMatrix(10, 3)
KrzProjection(m.list)
KrzProjection(m.list, full.results = TRUE)
KrzProjection(m.list, ret.dim.1 = 5, ret.dim.2 = 4)
KrzProjection(m.list, ret.dim.1 = 4, ret.dim.2 = 5)

KrzProjection(m.list, c1)
KrzProjection(m.list, c1, full.results = TRUE)
}
\author{
  Diogo Melo, Guilherme Garcia
}
\references{
  Krzanowski, W. J. (1979). Between-Groups Comparison of
  Principal Components. Journal of the American Statistical
  Association, 74(367), 703. doi:10.2307/2286995
}
\seealso{
  \code{\link{RandomSkewers}},\code{\link{MantelCor}}
}
\keyword{Krzanowski}
\keyword{matrixcomparison}
\keyword{matrixcorrelation}

