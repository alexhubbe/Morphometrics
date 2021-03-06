\name{AncestralStates}
\alias{AncestralStates}
\title{Calculates ancestral states of some statistic}
\usage{
  AncestralStates(tree, tip.data, tip.sample.size = NULL)
}
\arguments{
  \item{tree}{phylogenetic tree}

  \item{tip.data}{list of tip nodes data}

  \item{tip.sample.size}{vector of tip nodes sample sizes}
}
\value{
  list with calculated ancestral states, using labels or
  numbers from tree
}
\description{
  Calculates weighted average of some statistic along a
  phylogeny
}
\examples{
library(ape)
data(bird.orders)
tree <- bird.orders
mat.list <- RandomMatrix(5, length(tree$tip.label))
names(mat.list) <- tree$tip.label
sample.sizes <- runif(length(tree$tip.label), 15, 20)
AncestralStates(tree, mat.list, sample.sizes)
}

