
library(forecast)
library(ggplot2)



set.seed(4312)
x = cumsum(sample(c(-1,1),100,T))
print(x)
serie = ts(x,start = c(1901),end = c(2000), frequency = 1)
print(serie)
autoplot(serie)


prev = naive(serie, h=5)
class(prev)


print(prev)
print(prev$fitted)
print(prev$residuals)
autoplot(prev)
print(prev)

80  85


prev2 = naive(serie, h=5, level = c(95, 99))


print(prev2)

autoplot(prev2)


split.screen( figs = c( 2, 1 ) )
screen(1)
plot(prev)
screen(2)
plot(prev2)
close.screen( all = TRUE )


autoplot(AirPassengers)
prev3 = snaive(AirPassengers, h=12)
print(prev3)
autoplot(prev3)


prev3$mean
window(AirPassengers,start=c(1960))




