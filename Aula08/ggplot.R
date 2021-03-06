install.packages("ggplot2")
install.packages("ggthemes")
install.packages("lme4")

library(ggplot2)
library(ggthemes)
library(lme4)

data(iris)
ggplot(iris, aes(x=Petal.Length, y=Petal.Width))

ggplot(iris, aes(x=Petal.Length, y=Petal.Width)) +
  geom_point()
ggplot(iris, aes(x=Petal.Length, y=Petal.Width)) +
  geom_point(aes(colour = Species)) +
  labs(x = "Comp. da P�tala", y = "Larg. da P�tala", title="Iris") +
  scale_colour_brewer(palette = "Greens", name="Especiess")

ggplot(iris, aes(Petal.Width)) +
  geom_histogram(aes(colour = Species)) +
  labs(x = "Comp. da P�tala", y = "Larg. da P�tala", title="Iris") +
  facet_grid(~ Species)

ggplot(iris, aes(x=Petal.Length, colour=Species, fill=Species))+
  geom_histogram(bins=20) + labs(x = 'Petala', y = 'Frequency', title='Iris')+
  facet_grid(~Species)

ggplot(iris, aes(x=Species, y=Petal.Length))+
  geom_boxplot(aes(colour=Species)) +
  labs(x = 'Especie', y = 'Comp. da Petala', title='Iris')

ggplot(iris, aes(x=Petal.Length, y=Petal.Width))+
  geom_point(aes(colour=Species))+
  labs(x="Compr da P�tala", y="Larg da Pet�la", title= "Iris")+
  scale_colour_brewer(palette="Dark2", name="Esp�cies")+
  theme_economist()

ggplot(iris, aes(x=Petal.Length, y=Petal.Width))+
  geom_point(aes(colour=Species))+
  labs(x="Compr da P�tala", y="Larg da Pet�la", title= "Iris")+
  scale_colour_brewer(palette="Dark2", name="Esp�cies")+
  theme_solarized()


ggplot(iris, aes(x=Petal.Length, y=Petal.Width))+
  geom_point(aes(colour=Species))+
  labs(x="Compr da P�tala", y="Larg da Pet�la", title= "Iris")+
  scale_colour_brewer(palette="Dark2", name="Esp�cies")+
  theme_excel()