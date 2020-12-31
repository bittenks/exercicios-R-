library(forecast)
library(ggplot2)

autoplot(fdeaths)

fdeaths2 = ma(fdeaths, order = 5 )
autoplot(fdeaths2)

fdeaths3 = ma(fdeaths,order=12)
autoplot(fdeaths3)

fdeaths4 = tsclean(fdeaths)
autoplot(fdeaths4)

plot(fdeaths)
lines(fdeaths2, col="red")
lines(fdeaths3, col="blue")
lines(fdeaths4, col="green")


legend("topright",legend=c("Orig.","Ma5","Ma12","Tsc"), col = c("black","red","blue","green"), lty=1:2, cex=0.8,)









