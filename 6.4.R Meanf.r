library(forecast)
library(ggplot2)

autoplot(fdeaths)

mean(fdeaths)

prev = meanf(fdeaths, h=5)
print(prev)
autoplot(prev)

fdeaths2 = window(fdeaths,start=c(1976,1),end=c(1979,12))
autoplot(fdeaths2)
mean(fdeaths2)
prev2 = meanf(fdeaths2, h=5)
print(prev2)
autoplot(prev2)

plot(prev)
lines(prev2$mean, col="red")



