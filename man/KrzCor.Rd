\name{KrzCor}
\alias{KrzCor}
\alias{KrzCor.default}
\alias{KrzCor.list}
\title{Compare matrices via Krzanowski Correlation}
\usage{
  KrzCor(cov.x, cov.y, ...)

  \method{KrzCor}{default} (cov.x, cov.y, ret.dim = NULL,
    ...)

  \method{KrzCor}{list} (cov.x, cov.y = NULL,
    ret.dim = NULL, repeat.vector = NULL, num.cores = 1,
    ...)
}
\arguments{
  \item{cov.x}{Single covariance matrix or list of
  covariance matrices. If single matrix is suplied, it is
  compared to cov.y. If list is suplied and no cov.y is
  suplied, all matrices are compared. If cov.y is suplied,
  all matrices in list are compared to it.}

  \item{cov.y}{First argument is compared to cov.y.
  Optional if cov.x is a list.}

  \item{ret.dim}{number of retained dimensions in the
  comparison, default for nxn matrix is n/2-1}

  \item{repeat.vector}{Vector of repeatabilities for
  correlation correction.}

  \item{num.cores}{If list is passed, number of threads to
  use in computation. Requires doMC library.}

  \item{...}{aditional arguments passed to other methods}
}
\value{
  If cov.x and cov.y are passed, returns Kzranowski
  correlation

  If cov.x is a list and cov.y is passed, same as above,
  but for all matrices in cov.x.

  If only a list is passed to cov.x, a matrix of Kzranowski
  correlation values. If repeat.vector is passed,
  comparison matrix is corrected above diagonal and
  repeatabilities returned in diagonal.
}
\description{
  Calculates covariance matrix correlation via Krzanowski
  Correlation
}
\examples{
c1 <- RandomMatrix(10)
c2 <- RandomMatrix(10)
c3 <- RandomMatrix(10)
KrzCor(c1, c2)

KrzCor(list(c1, c2, c3))

reps <- unlist(lapply(list(c1, c2, c3), MonteCarloRepKrzCor, 10, 10))
KrzCor(list(c1, c2, c3), repeat.vector = reps)

c4 <- RandomMatrix(10)
KrzCor(list(c1, c2, c3), c4)
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
  \code{\link{RandomSkewers}},\code{\link{KrzProjection}},\code{\link{MantelCor}}
}
\keyword{Krzanowski}
\keyword{matrixcomparison}
\keyword{matrixcorrelation}

