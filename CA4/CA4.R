



data(rock)
help(rock)
# ------plotting data for intial analysis-------
plot(rock)
# ------Standardise Data--------------
colnames(swiss)<-colnames(swiss)
x <- na.omit(rock) 
x[,c("area","peri","shape","perm")]
x<-scale(x[,c("area","peri","shape","perm")])
# ---------fitted 3 clusters--------------------
fit_3_sd<-kmeans(x,3)
pairs(x[,1:3],col=fit_3_sd$cluster,pch=fit_3_sd$cluster)
print(fit_3_sd)
# -------------Within Sum of Squares plot--------------
wss <- (nrow(x)-1)*sum(apply(x,2,var))
for (i in 2:15){wss[i] <- sum(kmeans(x,centers=i,nstart = 3)$withinss)}
plot(1:15, wss, type="b", xlab="Number of Clusters",ylab="Within Clusters Sum of Squares")








