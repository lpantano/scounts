% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/de_lqno.R
\name{isoLQNO}
\alias{isoLQNO}
\title{Differential expression between two groups using LQNO model}
\usage{
isoLQNO(counts, groups = NULL, long = FALSE)
}
\arguments{
\item{counts}{Count matrix.}

\item{groups}{Character vector to indicate the group of each sample.}

\item{long}{Whether matrix is in long format. Default FALSE.}
}
\value{
data.frame with estimates and p-values.
}
\description{
Differential expression between two groups using LQNO model
}
\details{
Methods adapted from \emph{Argyropoulos et al (2017)}.
}
\examples{
options(warn = -1) # this is only for tiny example
data(dat286)
datRat<-subset(dat286.long,(Series=="Equi" | Series =="RatioA") & Amount=="100 fmoles")
datRat$SampleID<-factor(datRat$SampleID)
datRat$Series<-factor(datRat$Series)
res <- isoLQNO(datRat, long=TRUE)
}
\references{
Argyropoulos, Christos, et al. "Modeling bias and variation in
the stochastic processes of small RNA sequencing."
Nucleic Acids Research (2017).
}
\author{
Christos Argyropoulos and Lorena Pantano
}
