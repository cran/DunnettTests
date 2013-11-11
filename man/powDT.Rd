\name{powDT}
\alias{powDT}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
To calculate the testing power for step-down or step-up Dunnett procedure numerically 
}
\description{
For the problem of comparing means of k treatment groups to the mean of one control group. The implementation of the function needs the following three assumptions:
1. The k treatment groups have identical treatment effect size. 
2. The samples to be assigned to each of the k treatment groups are expected to be equal at size n.
3. The alternative hypotheses are one-sided.
With the violations of either of the assumptions, simulation-based power evaluation is suggested.
}
\usage{
powDT(r,k,mu,mu0,n,n0,contrast,sigma=NA,df=Inf,alpha=0.05,mcs=1e+05,testcall)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{r}{
The least number of null hypotheses to be rejected, e.g.,when r=1, the disjunctive power is returned and when r=k, the conjunctive power is returned.
}
  \item{k}{
Number of hypotheses to be tested, \eqn{k\ge 2} and \eqn{k\le 16}.
}
  \item{mu}{
Assumed population mean in each of the k treatment groups.
}
  \item{mu0}{
Assumed population mean in the control group.
}
  \item{n}{
Sample size in each of the k treatment groups
}
  \item{n0}{
Sample size in the control group
}
  \item{contrast}{
If mu and mu0 are concerned of mean of a continous outcome, specify contrast="means"; if mu and mu0 are concerned of proportion of binary outcome, specify contrast="props".
}
  \item{sigma}{
The population error variance, which should be specified when contrast="means"; if contrast="props", set sigma=NA as default and it will be calculated based on mu and mu0 specified within the function.
}
  \item{df}{
Degree of freedom of the t-test statistics. When (approximately) normally distributed test statistics are applied, set df=Inf (default).
}
  \item{alpha}{
The pre-specified overall significance level, default=0.05.
}
  \item{mcs}{
The number of monte-carlo sample points to numerically approximate the power for a given sample size, refer to Equation (4.3) and Equation (4.5) in Dunnett and Tamhane (1992).
}
  \item{testcall}{
The applied Dunnett test procedure: "SD"=step-down Dunnett test; "SU"=step-up Dunnett test.
}
}

\value{
Return the power of rejecting at least r out of the k false null hypotheses. 
}

\references{
Charles W. Dunnett and Ajit C. Tamhane. A step-up multiple test procedure. Journal of the American Statistical Association, 87(417):162-170, 1992.
}

\author{
FAN XIA <phoebexia@yahoo.com>
}

\seealso{
\code{\link{nvDT}}
}

\examples{
#Compare group means of four treatment arms to a control arm (upper one-sided tests)
# Setting
k <- 4
mu <- 22 #assumed mean of each treatment arm
mu0 <- 20 #assumed mean of the control arm
n <- 100
n0 <- 80
sigma <- 5 #assumed population error variance
df <- n*k+n0-k-1 #consider the t distribution

# at one-sided significance level 0.05
# compare the testing powers of SD and SU Dunnett for rejecting at least one nulls 
powSD <- powDT(r=1,k,mu,mu0,n,n0,"means",sigma=sigma,df=df,testcall="SD")
powSU <- powDT(r=1,k,mu,mu0,n,n0,"means",sigma=sigma,df=df,testcall="SU")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ step-up Dunnett }
\keyword{ step-down Dunnett }% __ONLY ONE__ keyword per line
\keyword{ testing power }