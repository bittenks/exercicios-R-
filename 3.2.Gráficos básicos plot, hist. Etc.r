library(ggplot2)

plot(sunspots)
hist(sunspots)
boxplot(sunspots)


autoplot(AirPassengers)

sun2 = window(sunspots,1749,c(1763,12))
plot(sun2)
hist(sun2)
boxplot(sun2)

plot(aggregate(AirPassengers, FUN=mean))


