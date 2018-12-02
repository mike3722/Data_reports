
data(Orange)

x <- Orange

head(x)

help(Orange)

hist(x$age,main = "Age of the Tree",xlab = "days since 1968/12/31" ,col = c("blue", "red", "gray", "green"))
hist(x$circumference,main = "trunk circumferences",xlab = " trunk circumferences (mm)" ,col = c("blue", "red", "gray", "green"))

cor(x$age, x$circumference, method="pearson")


scatter.smooth(x=x$age, y=x$circumference, main="Age & Circumference",xlab = "Age",ylab = "Circumfrence")

par(mfrow=c(1, 2)) 
boxplot(x$age, main="Age", sub=paste("Outlier rows: ", boxplot.stats(x$age)$out)) 
boxplot(x$circumference, main="Circumference", sub=paste("Outlier rows: ", boxplot.stats(x$circumference)$out)) 

lm_ac <-lm(x$age~x$circumference,data = x)
 
abline(lm_ac,col=2)
par(mfrow=c(2,1))   
plot(lm_ac, which=1:2)

summary(lm_ac)

library(boot)
# function to obtain R-Squared from the data 
rsq <- function(lm_ac, x) {
  d <- data[indices,] # allows boot to select sample 
  fit <- lm(formula, data=d)
  return(summary(fit)$r.square)
} 
# bootstrapping with 1000 replications 
results <- boot(data=mtcars, statistic=rsq, 
                R=1000, formula=mpg~wt+disp)

# view results
results 
plot(results)

# get 95% confidence interval 
boot.ci(results, type="bca")
