data("faithful") 
x <- faithful

plot(x$waiting,x$eruptions)

lm_wer<-lm(x$waiting~x$eruptions, data = mydata, main = " Waiting Times & Eruptions", xlab = "Waiting Times", ylab = "Eruptions")

summary(lm_wer)

hist(resid(lm_wer),main='Histogram of residuals',xlab='Standardised Residuals',ylab='Frequency')

abline(lm_wer,col=2)

par(mfrow=c(2,1))   
plot(lm_wer, which=1:2)


#cor(data$waiting,data$eruptions)





