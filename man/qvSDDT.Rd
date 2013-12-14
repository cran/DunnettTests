\name{qvSDDT}
\alias{qvSDDT}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
To calculate adjusted P-values (Q-values) for step-down Dunnett test procedure
}
\description{
In multiple testing problem, the adjusted P-values correspond to test statistics can be used with any fixed alpha to dertermine which hypotheses to be rejected.
}
\usage{
qvSDDT(teststats,alternative="U",df=Inf,corr = 0.5,corr.matrix = NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{teststats}{
The k-vector of test statistics, \eqn{k\ge 2}.
}
  \item{alternative}{
The alternative hypothesis: "U"=upper one-sided test (default); "L"=lower one-sided test; "B"=two-sided test. For lower one-sided tail test, use the negations of each of the test statistics.
}
  \item{df}{
Degree of freedom of the t-test statistics. When (approximately) normally distributed test statistics are applied, set df=Inf (default).
}
  \item{corr}{
Specified for equally correlated test statistics, which is the common correlation between the test statistics, default=0.5.
}
  \item{corr.matrix}{
Specified for unequally correlated test statistics, which is the correlation matrix of the test statistics, default=NA.
}
}

\value{
Return a LIST containing:
\item{"ordered test statistics"}{ordered test statistics from largest to smallest}
\item{"Adjusted P-values of ordered test statistics"}{adjusted P-values correspond to the ordered test statistics}
}

\references{
Charles W. Dunnett and Ajit C. Tamhane. A step-up multiple test procedure. Journal of the American Statistical Association, 87(417):162-170, 1992.
}
\author{
FAN XIA <phoebexia@yahoo.com>
}

\seealso{
\code{\link{qvSUDT}}
}

\examples{
qvSDDT(c(2.20,2.70,2.10,0.85),df=30)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ step-down Dunnett }
\keyword{ adjusted P-value }% __ONLY ONE__ keyword per line
