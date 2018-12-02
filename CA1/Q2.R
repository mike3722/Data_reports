mydata <- read.table("Data.txt",header=T)
#head(mydata)
#str(mydata)

plot(mydata$Blood_Pressure,mydata$Height,main =" Blood Pressure & Height",xlab = "Blood Presssure",ylab = "Height")

lm_hbp<-lm(mydata$Height~mydata$Blood_Pressure,data = mydata)

summary(lm_hbp)

plot(mydata$Blood_Pressure,mydata$Height)
cor(mydata$Blood_Pressure,mydata$Height)
abline(lm_hbp,col=2)


par(mfrow=c(2,1))   
plot(lm_hbp, which=1:2)

hist(resid(lm_hbp),main='Histogram of residuals',xlab='Standardised Residuals',ylab='Frequency')





