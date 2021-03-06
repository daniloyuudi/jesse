boxplot(airquality$Ozone, ylab="oz�nio", main="qualidade do ar")
hist(airquality$Ozone, xlab="oz�nio", ylab="frequ�ncia", main="qualidade do ar")
barplot(airquality$Ozone, main="qualidade do ar", ylab="oz�nio")
stem(airquality$Ozone)
pie(airquality$Month, main="qualidade do ar")
summary(airquality$Ozone)

plot(x=airquality$Temp, y=airquality$Ozone, xlab="temperatura", ylab="oz�nio",
     main="qualidade do ar", type="p")
boxplot(Ozone ~ Month, data=airquality, xlab="m�s", ylab="oz�nio",
        main="m�s x oz�nio")
