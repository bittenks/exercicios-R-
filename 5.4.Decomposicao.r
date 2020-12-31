
library(ggplot2)
library(forecast)
library(seasonal)
library(seasonalview)

plot(co2)
abline(reg=lm(co2~time(co2)))


classicdecco2 = decompose(co2)
autoplot(classicdecco2)

autoplot(fdeaths)
x = decompose(fdeaths)
autoplot(x)


x13ap = seas(AirPassengers)
autoplot(x13ap)


msap =   mstl(AirPassengers)
autoplot(msap)


view(x13ap)

ggseasonplot(AirPassengers)  
ggseasonplot(AirPassengers, polar = T)
ggmonthplot(AirPassengers)








