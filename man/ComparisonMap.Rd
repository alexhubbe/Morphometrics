\name{ComparisonMap}
\alias{ComparisonMap}
\title{Generic Comparison Map functions for creating parallel list methods
Internal functions for making eficient comparisons.}
\usage{
  ComparisonMap(matrix.list, MatrixCompFunc, ...,
    repeat.vector = NULL, num.cores = 1)
}
\arguments{
  \item{matrix.list}{list of matrices being compared}

  \item{MatrixCompFunc}{Function used to compare pair of
  matrices, must output a vector: comparisons and
  probabilities}

  \item{...}{Aditional arguments to MatrixCompFunc}

  \item{repeat.vector}{Vector of repeatabilities for
  correlation correction.}

  \item{num.cores}{Number of threads to use in computation.
  Requires doMC library.}
}
\value{
  Matrix of comparisons, matrix of probabilities.
}
\description{
  Generic Comparison Map functions for creating parallel
  list methods Internal functions for making eficient
  comparisons.
}
\author{
  Diogo Melo
}
\seealso{
  \code{\link{MantelCor}},
  \code{\link{KrzCor}},\code{\link{RandomSkewers}}
}

