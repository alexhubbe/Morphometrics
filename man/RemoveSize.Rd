\name{RemoveSize}
\alias{RemoveSize}
\title{Remove Size Variation}
\usage{
  RemoveSize(cov.matrix)
}
\arguments{
  \item{cov.matrix}{Covariance matrix}
}
\value{
  Altered covariance matriz, with no variation on former
  first principal component
}
\description{
  Removes first principal component effect in a covariance
  matrix.
}
\details{
  Function sets the first eigen value to zero.
}
\examples{
cov.matrix <- RandomMatrix(10, 1, 1, 10)
no.size.cov.matrix <- RemoveSize(cov.matrix)
eigen(cov.matrix)
eigen(no.size.cov.matrix)
}
\author{
  Diogo Melo, Guilherme Garcia
}
\keyword{size}

