% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trailR.R
\name{walktrail}
\alias{walktrail}
\title{Recursively collect nested trail dataframes and rbind them all together
with a sequence column which will sort them in a way that preserves their
hierarchical relationship}
\usage{
walktrail(trail = tinit(), prepend = "", seqcol = names(trail)[1],
  nestingcol = tail(names(trail), 1), sep = ".")
}
\description{
Recursively collect nested trail dataframes and rbind them all together
with a sequence column which will sort them in a way that preserves their
hierarchical relationship
}
