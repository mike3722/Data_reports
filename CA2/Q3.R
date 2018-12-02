

a<-lm(x$mpg~x$wt+x$hp+x$am,data = x)
par(mfrow=c(2,1)) 
plot(a, which=1:2)
summary(a)

b<-lm(x$mpg~x$wt+x$hp+x$gear,data = x)
par(mfrow=c(2,1)) 
plot(b, which=1:2)
summary(b)

anova(a,b)