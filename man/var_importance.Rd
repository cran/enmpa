% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/var_importance.R
\name{var_importance}
\alias{var_importance}
\title{Variable importance for GLMs}
\usage{
var_importance(fitted)
}
\arguments{
\item{fitted}{an object of class \code{glm} or a list of GLMs obtained using the
functions \code{\link{fit_selected}} or \code{\link{fit_glms}}.}
}
\value{
A data.frame containing the relative contribution of each variable. An
identification for distinct models is added if \code{fitted} contains multiple
models.
}
\description{
Calculates the relative importance of predictor variables based on the
concept of explained deviance. This is achieved by fitting a GLMs multiple
times, each time leaving out a different predictor variable to observe its
impact on the model's performance.
}
\details{
The process begins by fitting the full GLM model, which includes all predictor
variables. Subsequently, separate GLM models are fitted, excluding one
variable at a time to assess the influence of its absence on the model's
performance. By systematically evaluating the effect of removing each
predictor variable, the function provides valuable insights into their
individual contributions to the model's overall performance and explanatory
power.
}
\examples{
# Load a fitted selected model
data(sel_fit, package = "enmpa")

# Variable importance for single models
var_importance(sel_fit$ModelID_7)

# Variable importance for multiple models (only one model in this list)
var_importance(sel_fit)
}
