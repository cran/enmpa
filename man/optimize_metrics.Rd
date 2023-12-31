% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optimize_metrics.R
\name{optimize_metrics}
\alias{optimize_metrics}
\title{Find threshold values to produce three optimal metrics}
\usage{
optimize_metrics(actual, predicted, n_threshold = 100)
}
\arguments{
\item{actual}{(numeric) vector of actual values (0, 1) to be compared to
\code{predicted} values after applying a threshold.}

\item{predicted}{(numeric) vector of predicted probability values to be
thresholded and compared to \code{actual}.}

\item{n_threshold}{(numeric) number of threshold values to be used.
Default = 100.}
}
\value{
A list containing a data.frame with the resulting metrics for all threshold
values tested, and a second data.frame with the results for the threshold
values that produce sensitivity = specificity (ESS), maximum TSS (maxTSS),
and a sensitivity value of 0.9 (SEN90).
}
\description{
The metrics true skill statistic (TSS), sensitivity, specificity are explored
by comparing actual vs predicted values to find threshold values that produce
sensitivity = specificity, maximum TSS, and a sensitivity value of 0.9.
}
\examples{
# example data
act <- c(rep(1, 20), rep(0, 80))
pred <- c(runif(20, min = 0.4, max = 0.7), runif(80, min = 0, max = 0.5))

# run example
om <- optimize_metrics(actual = act, predicted = pred)
om$optimized
}
