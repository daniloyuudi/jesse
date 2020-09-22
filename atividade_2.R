boxplot(airquality$Ozone, ylab="ozônio", main="qualidade do ar")
hist(airquality$Ozone, xlab="ozônio", ylab="frequência", main="qualidade do ar")
barplot(airquality$Ozone, main="qualidade do ar", ylab="ozônio")
stem(airquality$Ozone)
pie(airquality$Month, main="qualidade do ar")
summary(airquality$Ozone)

plot(x=airquality$Temp, y=airquality$Ozone, xlab="temperatura", ylab="ozônio",
     main="qualidade do ar", type="p")
boxplot(Ozone ~ Month, data=airquality, xlab="mês", ylab="ozônio",
        main="mês x ozônio")
