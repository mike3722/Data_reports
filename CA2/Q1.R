
data(mtcars)

x <- mtcars

head(x)

help(mtcars)

summary(x)

hist(x$mpg,main = "Histogram of Miles/(US) gallon",xlab = "Miles/(US) gallon" ,col = c("blue", "red", "gray", "green"))
hist(x$cyl,main = "Number of cylinders",xlab = "Number of cylinders" ,col = c("blue", "red", "gray", "green"))
hist(x$disp,main = "Displacement ",xlab = "Displacement " ,col = c("blue", "red", "gray", "green"))
hist(x$hp,main = "Gross horsepower",xlab = "Gross horsepower" ,col = c("blue", "red", "gray", "green"))
hist(x$drat,main = "Rear axle ratio",xlab = "Rear axle ratio" ,col = c("blue", "red", "gray", "green"))
hist(x$wt,main = "Weight (1000 lbs)",xlab = "Weight (1000 lbs)" ,col = c("blue", "red", "gray", "green"))
hist(x$qsec,main = "1/4 mile time",xlab = "1/4 mile time" ,col = c("blue", "red", "gray", "green"))
hist(x$vs,main = "Engine V-shaped vs Straight",xlab = "0 = V-shaped,1 = Straight",xaxt='n',breaks = 2 ,col = c("blue", "red", "gray", "green"))
axis(side=1, at=seq(0,1, 1))
hist(x$am,main = "Transmission ",xlab = "0 = automatic, 1 = manual",xaxt='n',breaks = 2 ,col = c("blue", "red", "gray", "green"))
axis(side=1, at=seq(0,1, 1))
hist(x$gear,main = "Number of forward gears",xlab = "No. forward gears" ,col = c("blue", "red", "gray", "green"))
hist(x$carb,main = "Number of carburetors",xlab = "No. carburetors" ,col = c("blue", "red", "gray", "green"))


