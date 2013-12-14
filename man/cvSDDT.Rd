\name{cvSDDT}
\alias{cvSDDT}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
To calculate the critical constants for step-down Dunnett test procedure
}
\description{
The function applies to testing problem with either t distributed test statistics or (approximately) normally distributed test statistics. The function accomodates both equally correlated and unequally correlated test statistics. 
}
\usage{
cvSDDT(k,alpha=0.05,alternative="U",df = Inf,corr = 0.5,corr.matrix=NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{k}{
Number of hypotheses to be tested, \eqn{k\ge 2} and \eqn{k\le 16}.
}
  \item{alpha}{
The pre-specified overall significance level, default=0.05.
}
  \item{alternative}{
The alternative hypothesis: "U"=upper one-sided test (default); "B"=two-sided test. For lower one-sided tail test, specify alternative="U" and use the negations of the return critical constants.
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
Return a k-vector of critical constants from smallest to largest. 
}
\references{
Charles W Dunnett and Ajit C Tamhane. Step-down multiple tests for comparing treatments with a control in unbalanced one-way layouts. Statistics in Medicine, 10(6):939-947, 1991.
}
\author{
FAN XIA <phoebexia@yahoo.com>
}

\examples{
#To test four hypotheses, the test statistics are 
#2.2 (H1), 2.7 (H2), 2.1(H3), 0.85(H4), respectively. 
#The test statistcis are equally correlated at 0.6 and have df=30. 
#At overall one-sided significance level 0.05, the critical constants are given by:

cvSDDT(k=4,df=30,corr=0.6)

#based on the critical values, we reject H2, H1, H3 in a sequence and accept H4.
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ step-down Dunnett }
\keyword{ critical value }% __ONLY ONE__ keyword per line
