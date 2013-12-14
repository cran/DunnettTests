\name{nvDT}
\alias{nvDT}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
To calculate the least sample size required to achieve a certain power
}
\description{
For the problem of comparing means of k treatment groups to the mean of one control group, the implementation of the function needs the following three assumptions:
1. The k treatment groups have identical treatment effect size. 
2. The sample allocation ratio is pre-specified, and meanwhile the samples to be assigned to each of the k treatment groups are expected to be equal at size n.
3. The alternative hypotheses are one-sided.
With the violations assumption 2, the sample size could not be evaluated numerically, and with the violation of assumption 1 and 3, the evaluation of sample size needs great computational effort and thus not implemented. In the situation, simulation-based evaluation is suggested.
}
\usage{
nvDT(ratio,power,r,k,mu,mu0,contrast,sigma=NA,dist,alpha=0.05,mcs=1e+05,testcall)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ratio}{
The pre-specified ratio of sample size in each of the treatment groups to the sample size in the control group
}
  \item{power}{
The power required to be achieved.
}
  \item{r}{
The least number of null hypotheses to be rejected, e.g.,when r=1, the sample size is evaluated on disjunctive power and when r=k, the sample size is evaluated on conjunctive power.
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
  \item{contrast}{
If mu and mu0 are concerned of means of continous outcome, specify contrast="means"; if mu and mu0 are concerned of proportions of binary outcome, specify contrast="props".
}
  \item{sigma}{
The population error variance, which should be specified when contrast="means"; if contrast="props", set sigma=NA as default and it will be calculated based on mu and mu0 specified within the function.
}
  \item{dist}{
Whether the sample size is calculated for t-distributed test statistics (dist="tdist") or standard normally distributed test statistics (dist="zdist").
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
Return a LIST containing:
\item{"least sample size required in each treatment groups"}{value of n}
\item{"least sample size required in the control group"}{value of n0}
}

\references{
Charles W. Dunnett and Ajit C. Tamhane. A step-up multiple test procedure. Journal of the American Statistical Association, 87(417):162-170, 1992.
}

\author{
FAN XIA <phoebexia@yahoo.com>
}

\seealso{
\code{\link{powDT}}
}

\examples{
% \dontrun{
nvDT(2, 0.95, r=1, k=3, mu=0.7, mu0=0.5, contrast="props",dist="zdist", testcall="SD")
% }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ step-up Dunnett }
\keyword{ step-down Dunnett }% __ONLY ONE__ keyword per line
\keyword{ sample size }
