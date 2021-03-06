\name{CalcR2}
\alias{CalcR2}
\title{Mean Squared Correlations}
\usage{
  CalcR2(c.matrix)
}
\arguments{
  \item{c.matrix}{Covariance or correlation matrix.}
}
\value{
  Mean squared value of of diagonal elements of
  correlations
}
\description{
  Calculates the mean squared correlation of a covariance
  or correlation matrix. Measures integration.
}
\examples{
cov.matrix <- RandomMatrix(10, 1, 1, 10)
CalcR2(cov.matrix)
CalcR2(cov2cor(cov.matrix))
}
\author{
  Diogo Melo, Guilherme Garcia
}
\seealso{
  \code{\link{Flexibility}}
}
\keyword{correlation}
\keyword{integration}

