% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_file_components.R
\name{get_file_components}
\alias{get_file_components}
\title{GET file components}
\usage{
get_file_components(file_key)
}
\arguments{
\item{file_key}{string. The key that a Figma file is referred by.}
}
\value{
S3 object of class \code{rigma_get_file_components}. Components are
stored in the \code{meta} field.
}
\description{
Get a list of published components within a file library.
Note that published components are only available via the professional
plan.
}
\examples{
\dontshow{if (Sys.getenv("FIGMA_ACCESS_TOKEN") != "") (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
\dontrun{
#navigate to team page and get id from url
file_key <- "gYRjH0y8ZM0VtEfO8kf6ch"
get_file_components(file_key)
}
\dontshow{\}) # examplesIf}
}
