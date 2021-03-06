% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllMethods.R, R/mogsa-package.R
\docType{class}
\name{plot,moa,missing-method}
\alias{plot,moa,missing-method}
\alias{moa-class}
\title{plot moa object}
\usage{
\S4method{plot}{moa,missing}(
  x,
  value,
  type = 1,
  axes = NULL,
  n = NULL,
  tol = 1e-05,
  legend = NULL,
  col = NULL,
  lty = 1,
  pch = NULL,
  lg.x = "topright",
  lg.y = NULL,
  xlim = NULL,
  ylim = NULL,
  data.pch = 20,
  label = FALSE,
  label.cex = 1,
  layout = NULL,
  ...
)
}
\arguments{
\item{x}{an moa object}

\item{value}{which value to be plotted, see details}

\item{type}{which type of plot to be plotted, see details}

\item{axes}{which axes to be plotted}

\item{n}{Numbe of eigenvalues to shown}

\item{tol}{Only eigenvalues greater than the tol will be plotted}

\item{legend}{legend}

\item{col}{color}

\item{lty}{line type}

\item{pch}{point shape}

\item{lg.x}{legend position x}

\item{lg.y}{legend position y}

\item{xlim}{coordinate limit of x axis}

\item{ylim}{coordinate limit of y axis}

\item{data.pch}{the pch (shape) used to distinguish shapes}

\item{label}{point label}

\item{label.cex}{size of labels}

\item{layout}{layout passed to par()}

\item{...}{other parameters}
}
\description{
moa class object
}
\details{
value options:
  eig - plot the eigen values
    ... could be:
      type=1 - the type of plot
      axes=NULL - the axes selected to plot
      n=NULL - n eigenvalues to be drawn
      tol=1e-5 - the tolerance of eigenvalue, eigenvalues lower than this value wont be considered.
      legend=NULL - legend to put
      col=NULL - the color of each partial eigenvalue
      lty=1 - the line type used in the matplot, when type =4, used
      pch=NULL - the pch to draw 2D partial eigen plot, when type = 5 used
      lg.x="topright" - the position of legend
      lg.y=NULL - poistion argument passed to legend(...)
      ... - other arguemnts passed to functions, see below
    for:
      type 1: the eigen value
        ... are passed to barplot
      type 2: barplot show, partial eigenvalue, beside=FALSE
        ... are passed to barplot
      type 3: barplot show, partial eigenvalue, beside =TRUE
        ... are passed to barplot
      type 4: matplot show
        ... are passed to matplot
      type 5: the two dimensional plot, axes need to be specified
        ... are passed to heatmap 
  tau - the same with eig, but in the percentage view
    ... could be (same with eig, but in the percentage)
  obs - the observation
    ... could be:
      axes=1:2 - which axes should be draw
      type=1 - which type, see below
      data.pch=20 - the pch of dataset, if type=1, the first one is used
      col=1 - the color of observations, recycled used by data.frame
      label=FALSE - should be labeled?
      lg.x="topright" - position of legend
      lg.y=NULL - position of legend
      xlim=NULL - the xlimit
      ylim=NULL - the ylimit
      label.cex=1 - the cex of text
      ...  
    for:
      type 1: the center points draw
        ... passed to points
      type 2: the separate factor scores linked by lines
        ... passed to points
  var - the separate gene view, layout can be specified
  RV - the heatmap of RV coefficient
}
\section{Objects from the Class}{
 Objects can be created by calls of the form
\code{new("moa", ...)}. %% ~~ describe objects here ~~
}

\examples{

    showClass("moa")
    # load("R/mogsa/data/NCI60_4arrays.rda")
    data(NCI60_4arrays)
    ana <- moa(NCI60_4arrays, proc.row = "center_ssq1", w.data = "inertia", statis = TRUE)

    plot(ana, value="eig")
    plot(ana, value="tau", type=2)

}
\references{
Herve Abdi, Lynne J. Williams, Domininique Valentin and Mohammed
Bennani-Dosse. STATIS and DISTATIS: optimum multitable principal component
analysis and three way metric multidimensional scaling. WIREs Comput Stat
2012. Volume 4, Issue 2, pages 124-167

Herve Abdi, Lynne J. Williams, Domininique Valentin. Multiple factor
analysis: principal component analysis for multitable and multiblock data
sets. WIREs Comput Stat 2013
}
\author{
Chen Meng
}
\keyword{classes}
