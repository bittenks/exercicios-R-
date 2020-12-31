library(forecast)
library(ggplot2)

t1 = BoxCox(AirPassengers,lambda =0 )
autoplot(t1)

 
t2 = BoxCox(AirPassengers,lambda =.1 )
autoplot(t2)


lbd = BoxCox.lambda(AirPassengers)
print(lbd)
t3 = BoxCox(AirPassengers,lambda =lbd )
autoplot(t3)


t4 = diff(AirPassengers)
autoplot(t4)


t5 = log10(AirPassengers)
autoplot(t5)

split.screen( figs = c( 2, 2 ) )
screen(1)
plot(t1)
screen(2)
plot(t2)
screen(3)
plot(t3)
screen(4)
plot(t5)
close.screen( all = TRUE )




