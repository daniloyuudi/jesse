# exercício 1
install.packages(c("ggplot2","lme4"))
library(ggplot2)
library(lme4)

sleepystudy
data("sleepstudy", package="lme4")
sleepstudy
str(sleepstudy)
attach(sleepstudy)

ggplot(sleepstudy, aes(x=Days, y=Reaction)) +
  geom_point() +
  facet_wrap(~ Subject, ncol = 6, nrow = 3) +
  geom_smooth(method="lm", se = FALSE) +
  labs(x = "Dias", y = "Tempo de Reação", title = "Estudo de Fadiga")


# exercício 2
install.packages("readr", "tidyverse")
library(readr)
library(tidyverse)
BancoMundial <- read_csv("BancoMundial.csv")
View(BancoMundial)
#str(BancoMundial)
glimpse(BancoMundial)
