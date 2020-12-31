library(forecast)
library(ggplot2)

autoplot(presidents)

prev = auto.arima(presidents)
print(prev$residuals)

prev$residuals
autoplot(prev$residuals)
hist(prev$residuals)
var(prev$residuals,na.rm = T)
mean(as.vector(prev$residuals),na.rm = T)


acf(prev$residuals, na.action = na.pass )

checkresiduals(prev)


shapiro.test(prev$residuals)









