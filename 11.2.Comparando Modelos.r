
library(forecast)
library(ggplot2)
library(seasonal)
library(seasonalview)
library(urca)

dados = read.csv("hotel.csv")
print(dados)

dados = ts(dados, start = c(2003,1), end = c(2017,12), frequency=12)
ocupacaotreino = window(dados, start = c(2003,1), end = c(2015,12))
ocupacaoteste  = window(dados, start = c(2016,1), end = c(2017,12))


modeloarima = auto.arima(ocupacaotreino,  trace = F,stepwise = F, approximation = F )
preverarima = forecast(modeloarima, h=24)


modeloets = ets(ocupacaotreino)
preverets = forecast(modeloets, h=24)

plot(preverarima)
lines(preverets$mean, col="red")

accuracy(preverarima,ocupacaoteste)
accuracy(preverets,ocupacaoteste)

plot(ocupacao)
lines(preverarima$mean, col="blue")
lines(preverets$mean, col="green")













