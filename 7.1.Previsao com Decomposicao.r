
library(forecast)
library(ggplot2)

autoplot(AirPassengers)
previ = stlf(AirPassengers, h=48)
print(previ)
autoplot(previ)



