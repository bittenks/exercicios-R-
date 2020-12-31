

x = Box.test(airmiles,type="Ljung-Box")
print(x)


z = diff(airmiles)


x = Box.test(z,type="Ljung-Box")
print(x)

split.screen( figs = c( 2, 1 ) )
screen(1)
plot(airmiles, main="Airmiles")
screen(2)
plot(z, main="Série Transformada")
close.screen( all = TRUE )


ndiffs(airmiles, test="pp")
ndiffs(z, test="pp")


















