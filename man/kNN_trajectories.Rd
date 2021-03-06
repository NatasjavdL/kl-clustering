% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/a_1NN.R
\name{kNN_trajectories}
\alias{kNN_trajectories}
\title{compute 1-NN clusters}
\usage{
kNN_trajectories(dt, l, prec_l = 1, dist_measure = 2, prec_eps = NA,
  square_dist = FALSE, norm_dist = TRUE)
}
\arguments{
\item{dt}{list of data frames, each data frame representing a path}

\item{l}{number of datapoints to return for each center}

\item{prec_l}{precision on l, i.e. l - prec_l <= |center| <= l + prec_l}

\item{dist_measure}{either input 1, 2 or 3 correspondig to
"continuous frechet", "discrete frechet" or "dtw"}

\item{prec_eps}{if dist_measure = 1 (continuous frechet) then this is the
precision of the epsilon approximation
default is NA}

\item{square_dist}{default = FALSE. If dist_measure = 3, then:
square_dist = TRUE ensures the dtw uses squared distances
square_dist = FALSE ensures the dtw uses normal distances}

\item{norm_dist}{default = TRUE. If dist_measure = 3, then:
norm_dist = TRUE ensures dtw distances returns a normalized distance
i.e. dtw_dist = dtw_dist/max(|p1|, |p2|)
if square_dist = TRUE then dtw_dist = sqrt(dtw_dist/max(|p1|, |p2|))
norm_dist = FALSE outputs actual dtw distance}
}
\description{
compute 1-NN clusters
}
