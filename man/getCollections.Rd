% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gep2mep.R
\name{getCollections}
\alias{getCollections}
\title{Returns the names of the module collections in a repository.}
\usage{
getCollections(rp)
}
\arguments{
\item{rp}{A repository created by \code{\link{createRepository}}.}
}
\value{
Vector of collection names (see details).
}
\description{
Returns the names of the module collections in a repository.
}
\details{
Each collection in a database has a "db" name and a
    "subdb" name assigned, which are used to build the collection
    identifier as "db_subdb". This function obtains the identifiers
    by looking at data stored in the repository \code{rp} (entries
    that are tagged with "gmd").
}
\examples{

db <- readRDS(system.file("testgmd.RDS", package="gep2mep"))
repo_path <- file.path(tempdir(), "gep2mepTemp")

rp <- createRepository(repo_path, db)
## Repo root created.
## Repo created.
## [15:45:06] Storing pathway data for DB: C3_TFT
## [15:45:06] Storing pathway data for DB: C3_MIR
## [15:45:06] Storing pathway data for DB: C4_CGN

getCollections(rp)
## [1] "C3_TFT" "C3_MIR" "C4_CGN"

unlink(repo_path, TRUE)

}