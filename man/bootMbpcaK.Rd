% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bootMbpcaK.R
\name{bootMbpcaK}
\alias{bootMbpcaK}
\title{An internal function called by \code{\link{bootMbpca}}.}
\usage{
bootMbpcaK(
  data,
  replace,
  B = 100,
  mc.cores = 1,
  resample = c("sample", "total", "gene"),
  ncomp,
  method,
  k,
  center = FALSE,
  scale = FALSE,
  option = "uniform",
  maxiter = 1000,
  svd.solver = c("svd", "fast.svd", "propack")
)
}
\arguments{
\item{data}{A \code{list} of \code{matrix} to bootstrap.}

\item{replace}{A logical variable to indicate sampling with or without
replacement}

\item{B}{Integer; number of bootstrap.}

\item{mc.cores}{Integer; number of cores used in bootstrap. This value is
passed to function mclapply}

\item{resample}{Could be one of "sample", "gene" or "total". "sample" and
"gene" means sample-wise and variable-wise resampling, repectively. "total"
means total resampling.}

\item{ncomp}{passed to \code{\link{mbpca}}.}

\item{method}{passed to \code{\link{mbpca}}.}

\item{k}{passed to \code{\link{mbpca}}.}

\item{center}{passed to \code{\link{mbpca}}.}

\item{scale}{passed to \code{\link{mbpca}}.}

\item{option}{passed to \code{\link{mbpca}}.}

\item{maxiter}{passed to \code{\link{mbpca}}.}

\item{svd.solver}{passed to \code{\link{mbpca}}.}
}
\value{
A matrix of mbpca eigenvalues resulted from bootstrap samples
}
\description{
An internal function called by \code{\link{bootMbpca}}.
}
\seealso{
\code{\link{bootMbpca}}
}
\author{
Chen Meng
}
