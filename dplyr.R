#dplyr
#Nos permite manipular dados para extrair informações tão complexas quanto quisermos

#Funções:
#select: seleciona variáveis baseada em seus nomes (colunas)
#filter: seleciona casos baseados em seus valores (linhas)
#summarise: resume múltiplos valores a apenas um
#arrange: muda a ordem das linhas
#mutate: cria novas variáveis em função de outras já existentes

install.packages("dplyr")
install.packages("gapminder")
library(dplyr)
library(gapminder)
data(gapmider)
str(gapminder)

head(gapminder)

select (gapminder, gdpPercap)
select(gapminder, country, gdpPercap)
filter(gapminder, gdpPercap > 10000)

filter(gapminder, country== "Brazil")


#pipe = %>% concatena duas ou mais operações do dplyr

gapminder %>% 
  filter(country=="Brazil") %>% 
  select(year, gdpPercap) %>% 
  print(n = Inf)


gapminder %>% 
  group_by(continent) %>% 
  na.omit() %>% 
  summarise_all(mean())

gapminder %>% 
  group_by(continent) %>% 
  summarise(Media = mean(lifeExp), DesvPad=sd(lifeExp)) %>% 
  arrange(Media)


#Sintaxe gráfica avançada
install.packages("ggplot2")
library(dplyr)
library(ggplot2)
gapminder %>%
  filter(year==2007) %>%
  ggplot(., aes(x=log(gdpPercap), y=lifeExp, colour=continent))+
  geom_point(aes(size=pop, alpha=0.25))+
  labs(x="Logaritimo do PIB per capita", y="Expectativ de Vida ao Nascer", colour="continent")


#Adicionar um histograma as margens do gráfico
install.packages("ggExtra")
library(ggExtra)
g<- gapminder %>%
  filter(year==2007)%>%
  ggplot(.,aes(x=log(gdpPercap), y=lifeExp, colour=continent))+
  geom_point(aes(size=pop, alpha=0.25))+
  labs(x="Logaritimo do PIB per capita", y="Expectativ de Vida ao Nascer", colour="continent")
ggMarginal(g, type="histogram", fill="transparent")


#Plotar um gráfico de linha, países Argentina, Bolívia, Brazil, Chile, Colombia, Paraguay, Peru, Uruguai, Venezuela
#para as variáveis, lifeExp
#anos de 1952 até 2007, by=5
anos <- seq(from=1952, to=2007, by=5)
paises <- c("Argentina", "Bolívia", "Brazil", "Chile", "Colombia", "Paraguay", "Peru", "Uruguai", "Venezuela")
gapminder %>% 
  filter(year %in% anos) %>% 
  filter(country %in% paises) %>%
  ggplot(.,aes(x=year, y=lifeExp, colour=country))+
  geom_line()+
  labs(x="Ano", y="Expectativa de Vida ao Nascer", colour = "country")+
  scale_x_continuous(breaks=anos)


#Gráfico Violino
gapminder %>% 
  filter(year==2007) %>% 
  ggplot(.,aes(x=continent, y=lifeExp, fill=continent))+
  geom_violin()+
  labs(x="Continente", y="Expectativa de Vida ao Nascer", colour="continent")


#Gráfico Violino Anos
anos = seq(1957, 2007)
gapminder %>% 
  filter(year %in% anos) %>% 
  ggplot(.,aes(x=continent, y=lifeExp, fill=continent))+
  geom_violin()+
  labs(x="Continente", y="Expectativa de Vida ao Nascer", colour="continent")+
  facet_wrap(~year, nrow=3)+
  theme(axis.text.x = element_text(angle=90, vjust=0.5, hjust=1) )
