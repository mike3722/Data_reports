

data(mtcars)
x <- mtcars

plot(x$cyl,x$mpg,main = "Number of cylinders & Miles/(US) gallon",xlab = "No. cylinders",ylab = "Miles/(US) gallon", col=c("red"),pch = 19)
(x$cyl,x$mpg)
plot(x$hp,x$qsec,main = "Gross horsepower & 1/4 mile time",xlab = "Gross horsepower",ylab = "1/4 mile time", col=c("red"),pch = 19)
cor(x$hp,x$qsec)
plot(x$cyl,x$qsec,main = "Number of cylinders & 1/4 mile time",xlab = "Number of cylinders",ylab = "1/4 mile time", col=c("red"),pch = 19)
cor(x$cyl,x$qsec)
plot(x$wt,x$qsec,main = "Weight & 1/4 mile time",xlab = "Weight",ylab = "1/4 mile time", col=c("red"),pch = 19)
cor(x$wt,x$qsec)
#----------------------------------- HAVE LINEAR REALTIONSHIPS--------------------------------------------------------------------------------- 
plot(x$wt,x$mpg,main = "Weight & Miles/(US) gallon",xlab = "Weight",ylab = "Miles/(US) gallon", col=c("red"),pch = 19)
cor(x$wt,x$mpg)
cor.test(x$wt,x$mpg)

plot(x$hp,x$qsec,main = "Gross horsepower & 1/4 mile time",xlab = "Gross horsepower",ylab = "1/4 mile time", col=c("red"),pch = 19)
cor(x$hp,x$qsec)
cor.test(x$hp,x$qsec)

plot(x$mpg,x$hp,main = " Miles/(US) gallon & Gross horsepower",xlab = "Miles/(US) gallon",ylab = "Gross horsepower", col=c("red"),pch = 19)
cor(x$mpg,x$hp)
cor.test(x$mpg,x$hp)

plot(x$hp,x$wt,main = "Gross horsepower & Weight",xlab = "Gross horsepower",ylab = "Weight", col=c("red"),pch = 19)
cor(x$hp,x$wt)
cor.test(x$hp,x$wt)
