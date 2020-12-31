
library(forecast)
library(ggplot2)
library(seasonal)
library(seasonalview)
library(urca)

dados = read.csv(“importar.csv”)
print(dados)
ocupacao = ts(dados, start = c(2003,1), end = c(2017,12), frequency=12)

summary(ocupacao)


autoplot(ocupacao)
hist(ocupacao)
boxplot(ocupacao)


dec =   decompose(ocupacao)
autoplot(dec)

autoplot(dec$trend)
autoplot(window(dec$trend, start=c(2015,9)))

ggseasonplot(ocupacao)  
ggseasonplot(window(ocupacao, start=c(2016))) 

est = ur.kpss(ocupacao)
print(est)
ndiffs(ocupacao)

tsdisplay(ocupacao)

modelo = auto.arima(ocupacao, trace = T,stepwise = F, approximation = F )
print(modelo)

checkresiduals(modelo)

shapiro.test(modelo$residuals)

previsao = forecast(modelo,h=24)

autoplot(previsao)




















