\name{cvSUDT}
\alias{cvSUDT}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
To calculate the critical constants for step-up Dunnett test procedure
}
\description{
The function applies to testing problem with either t distributed test statistics or (approximately) normally distributed test statistics. The function accomodates both equally correlated and unequally correlated test statistics. The calculation relies on recursive formulas as proposed in Kwong and Liu (2000) that the calculation needs increasing computation time with the increasing number of hypotheses to be tested. The function fastly calculate critical constants for up to 16 hypotheses. 
}
\usage{
cvSUDT(k,alpha=0.05,alternative="U",df=Inf,corr=0.5,corr.matrix=NA,mcs=1e+05)
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
  \item{mcs}{
The number of monte carlo sample points to numerically approximate the probability that to solve critical values, refer to Equation (3.3) in Dunnett and Tamhane (1992) or Equation (2) in Kwong and Liu (2000), default=1e+05.
}
}

\value{
Return a k-vector of critical constants from smallest to largest.
}
\references{
Charles W. Dunnett and Ajit C. Tamhane. A step-up multiple test procedure. Journal of the American Statistical Association, 87(417):162-170, 1992.

Charles W Dunnett and Ajit C Tamhane. Step-up multiple testing of parameters with unequally correlated estimates. Biometrics, pages 217-227, 1995.

Koon Shing Kwong and Wei Liu. Calculation of critical values for dunnett and tamhane???s step-up multiple test procedure. Statistics &amp; probability letters, 49(4):411-416, 2000.
}
\author{
FAN XIA <phoebexia@yahoo.com>
}
\examples{
#Compare four treatment arms to one control 
#with test statistics 2.2(H1), 2.7(H2), 2.1(H3), 0.85(H4). 
n=c(100,80,80,60)
n0=60
corr.matrix<-matrix(0,4,4)
diag(corr.matrix)=rep(1,4)
for(i in 1:3){
   for(j in (i+1):4){
     corr.matrix[i,j]=(1/n0)/(sqrt(1/n[i]+1/n0)*sqrt(1/n[j]+1/n0))
     corr.matrix[j,i]= corr.matrix[i,j]
   }
}
#The critical constants are given by

cvSUDT(k=4,df=sum(n)+n0-5,corr.matrix=corr.matrix)

#At overall one-sided significance level 0.05, 
#accepy H4 but reject H3 and hence H1 and H2.
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ step-up Dunnett }
\keyword{ critical value }% __ONLY ONE__ keyword per line
