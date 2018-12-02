solar.radiation<- c(11.1,10.6,6.3,8.8,10.7,11.2,8.9,12.2)
#1. get the mean
result.mean <- mean(solar.radiation)
print(result.mean)
#2. get the median
result.median <- median(solar.radiation)
print(result.median)
#3. get the vairiance
result.variance<-var(solar.radiation)
print(result.variance)


#sr10<- c(21.1, 20.6, 16.13, 18.8, 20.7, 21.2, 18.9, 22.2)
sr10<- 10+solar.radiation
#1. get the mean
result.mean10 <- mean(sr10)
print(result.mean10)
#2. get the median
result.median10 <- median(sr10)
print(result.median10)
#3. get the vairiance
result.variance10<-var(sr10)
print(result.variance10)

solar.radiation<- c(11.1,10.6,6.3,8.8,10.7,11.2,8.9,12.2)
sr2<- -2 * solar.radiation
#1. get the mean
result.mean <- mean(sr2)
print(result.mean)
#2. get the median
result.median <- median(sr2)
print(result.median)
#3. get the vairiance
result.variance<-var(sr2)
print(result.variance)
