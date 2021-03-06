% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nifti_local_moderated_t_stat.R
\name{nifti_local_moderated_t_stat}
\alias{nifti_local_moderated_t_stat}
\title{Compute local moderated T-statistics}
\usage{
nifti_local_moderated_t_stat(
  imgs,
  mask = NULL,
  nn,
  radius,
  adjust.method = "BH",
  verbose = FALSE,
  ...
)
}
\arguments{
\item{imgs}{List of images or character of filenames}

\item{mask}{Image to subset the data}

\item{nn}{nearest-neighbors computed by \code{\link{findNearestNeighbors}}}

\item{radius}{Integer: Indices that dist(targetInd - queryInd) <= radius}

\item{adjust.method}{method to adjust p-value,
passed to \code{\link{topTable}}}

\item{verbose}{Print diagnostic messages}

\item{...}{additional arguments to pass to \code{\link[parallel]{mclapply}}}
}
\value{
A list of output images, including the moderated T map, p-value map,
adjusted p-value map, and the pseduo T map.
}
\description{
Compute local moderated T-statistics
}
