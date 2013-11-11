\name{DunnettTests-package}
\alias{DunnettTests-package}
\alias{DunnettTests}
\docType{package}
\title{
R implementation of step-down and step-up Dunnett test procedures
}
\description{
For the implementation of the step-down or step-up Dunnett test procedures, the package includes R functions to calculate critical constants and R functions to calculate adjusted P-values of test statistics. In addition, the package also contains functions to evaluate testing powers and hence the necessary sample sizes for the classic statistical problem of comparing multiple treatments with a control.
}
\details{
\tabular{ll}{
Package: \tab DunnettTests\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-11-11\cr
License: \tab GPL-2\cr
}
}
\author{
FAN XIA
Maintainer: FAN XIA <phoebexia@yahoo.com>
}
\references{
Charles W Dunnett and Ajit C Tamhane. Step-down multiple tests for comparing treatments with a control in unbalanced one-way layouts. Statistics in Medicine, 10(6):939-947, 1991.

Charles W. Dunnett and Ajit C. Tamhane. A step-up multiple test procedure. Journal of the American Statistical Association, 87(417):162-170, 1992.

Charles W Dunnett and Ajit C Tamhane. Step-up multiple testing of parameters with unequally correlated estimates. Biometrics, pages 217-227, 1995.

Ajit C Tamhane and Charles W Dunnett. Stepwise multiple test procedures with biometric applications. Journal of statistical planning and inference, 82(1):55-68, 1999.

Koon Shing Kwong and Wei Liu. Calculation of critical values for dunnett and tamhane???s step-up multiple test procedure. Statistics &amp; probability letters, 49(4):411-416, 2000.
}
\keyword{ package }
\keyword{ step-down Dunnett }
\keyword{ step-up Dunnett }
\keyword{ critical value }
\keyword{ adjusted P-value }
\keyword{ testing power }
\keyword{ sample size }

\examples{
#critical constants 
cvSDDT(k=4,alpha=0.05,alternative="U",corr=0.5,df=30)
cvSUDT(k=4,alpha=0.05,alternative="U",corr=0.5,df=30)

#adjusted P-values
qvSDDT(teststats=c(2.20,1.47,2.00),alternative="B",corr=0.5,df=30)
\dontrun{
qvSUDT(teststats=c(2.20,1.47,2.00),alternative="B",corr=0.5,df=30)}

#testing power of SU Dunnett to reject at least one false null
powDT(1,4,mu=22,mu0=20,n=100,n0=80,"means",sigma=5,alpha=0.025,testcall="SU")

#sample size to achieve at least 90\% power of rejecting all the 
#false nulls for step-down Dunnett test procedure
\dontrun{
nvDT(1,0.90,r=4,k=4,mu=0.7,mu0=0.5,"props",dist="zdist",testcall="SD")
}
}
