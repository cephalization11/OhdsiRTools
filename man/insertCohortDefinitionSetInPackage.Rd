% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WebApiTools.R
\name{insertCohortDefinitionSetInPackage}
\alias{insertCohortDefinitionSetInPackage}
\title{Insert a set of cohort definitions into package}
\usage{
insertCohortDefinitionSetInPackage(fileName, baseUrl, insertTableSql = TRUE,
  insertCohortCreationR = TRUE, generateStats = FALSE, opts = list(),
  packageName)
}
\arguments{
\item{fileName}{Name of a CSV file in the inst/settings folder of the package
specifying the cohorts to insert. See details for the expected file
format.}

\item{baseUrl}{The base URL for the WebApi instance, for example:
"http://api.ohdsi.org:80/WebAPI".}

\item{insertTableSql}{Should the SQL for creating the cohort table be inserted into the
package as well? This file will be called CreateCohortTable.sql.}

\item{insertCohortCreationR}{Insert R code that will create the cohort table and instantiate the
cohorts? This will create a file called R/CreateCohorts.R containing
a function called \code{.createCohorts}.}

\item{generateStats}{Should cohort inclusion rule statistics be created?}

\item{opts}{List of options that can be passed to the RCurl methods for specifing
additional options for connecting to REST end-points.}

\item{packageName}{The name of the package (only needed when inserting the R code as
well).}
}
\description{
Insert a set of cohort definitions into package
}
\details{
The CSV file should have at least the following fields: \describe{ \item{atlasId}{The cohort ID in
ATLAS.} \item{cohortId}{The cohort ID that will be used when instantiating the cohort (can be
different from atlasId).} \item{name}{The name to be used for the cohort. This name will be used to
generate file names, so please use letters and numbers only (no spaces).} }
}
