dnorm(-1)
pnorm(-1)
qnorm(0.0975)

data(Nile)
vazao_nilo <- Nile
summary(vazao_nilo)
dnorm(vazao_nilo)

data(Nile)
Nile
dim(Nile)

is.data.frame(Nile)
as.data.frame(Nile)

rnorm(100)
plot(dnorm, -3, 3)
plot(pnorm, -3, 3)

plot(function(x) dnorm(x,100,8), 70, 130)
plot(function(x) pnorm(x, 100, 8), 70, 130)

plot(dnorm, -3, 3, xlab="valores de X", ylab="densidade de probabilidade")
title("Distribuição normal\nX ~ N(100,64)")

plot(function(x) dnorm(x, 100, 8), 60, 140, ylab="f(x)")
plot(function(x) dnorm(x, 90, 80), 60, 140, add=T, col=2)
plot(function(x) dnorm(x, 100, 15), 60, 140, add=T, col=2)

legend(120, 0.05, c("N(100,64)", "N(60,94)", "N(100, 225)"), fill=1:2)


plot(vazao_nilo, xlab="Ano", ylab="Vazão do Rio Nilo", main="Analise de Dados", yaxt="n")
axis(side=1, at=seq(1950, 1970, 20))
axis(side=2, at=seq(400, 1400, 100), las=1)

abline(mean(vazao_nilo), 0, col="red")       
abline(median(vazao_nilo), 0, col="blue")
abline(max(vazao_nilo), 0, col="green")
abline(min(vazao_nilo), 0, col="yellow")
