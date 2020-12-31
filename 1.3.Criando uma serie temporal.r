
install.packages("forecast")
install.packages("ggplot2")
install.packages("urca")
install.packages("lmtest")
install.packages("seasonal")
install.packages("seasonalview")


myts = rnorm(60)
myts = ts(myts,start = c(2012,1), end=c(2016,12), frequency=12)
plot(myts)




