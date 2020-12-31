
library(forecast)
library(ggplot2)

plot(Seatbelts)

autoplot( Seatbelts[, c("DriversKilled")])

cintos = window(Seatbelts[, c("DriversKilled")], start=c(1980,1), end=c(1983,12))

modelo1 = auto.arima(cintos)
modelo1

prev1= forecast(modelo1, h=12)
print(prev1)
autoplot(prev1)
motoristas =   as.vector(window(Seatbelts[, c("drivers")], start=c(1980,1), end=c(1983,12)))
motoristas

modelo2 = auto.arima(cintos, xreg = motoristas   )
modelo2

motoristas2 =   as.vector(window(Seatbelts[, c("drivers")], start=c(1984,1), end=c(1984,12)))
prev2 = forecast(modelo2, xreg = motoristas2)
print(prev2)
autoplot(prev2)

plot(prev1)
lines(prev2$mean, col="red")


