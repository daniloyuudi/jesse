#dplyr
#Nos permite manipular dados para extrair informa��es t�o complexas quanto quisermos

#Fun��es:
#select: seleciona vari�veis baseada em seus nomes (colunas)
#filter: seleciona casos baseados em seus valores (linhas)
#summarise: resume m�ltiplos valores a apenas um
#arrange: muda a ordem das linhas
#mutate: cria novas vari�veis em fun��o de outras j� existentes

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


#pipe = %>% concatena duas ou mais opera��es do dplyr

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


#Sintaxe gr�fica avan�ada
install.packages("ggplot2")
library(dplyr)
library(ggplot2)
gapminder %>%
  filter(year==2007) %>%
  ggplot(., aes(x=log(gdpPercap), y=lifeExp, colour=continent))+
  geom_point(aes(size=pop, alpha=0.25))+
  labs(x="Logaritimo do PIB per capita", y="Expectativ de Vida ao Nascer", colour="continent")


#Adicionar um histograma as margens do gr�fico
install.packages("ggExtra")
library(ggExtra)
g<- gapminder %>%
  filter(year==2007)%>%
  ggplot(.,aes(x=log(gdpPercap), y=lifeExp, colour=continent))+
  geom_point(aes(size=pop, alpha=0.25))+
  labs(x="Logaritimo do PIB per capita", y="Expectativ de Vida ao Nascer", colour="continent")
ggMarginal(g, type="histogram", fill="transparent")


#Plotar um gr�fico de linha, pa�ses Argentina, Bol�via, Brazil, Chile, Colombia, Paraguay, Peru, Uruguai, Venezuela
#para as vari�veis, lifeExp
#anos de 1952 at� 2007, by=5
anos <- seq(from=1952, to=2007, by=5)
paises <- c("Argentina", "Bol�via", "Brazil", "Chile", "Colombia", "Paraguay", "Peru", "Uruguai", "Venezuela")
gapminder %>% 
  filter(year %in% anos) %>% 
  filter(country %in% paises) %>%
  ggplot(.,aes(x=year, y=lifeExp, colour=country))+
  geom_line()+
  labs(x="Ano", y="Expectativa de Vida ao Nascer", colour = "country")+
  scale_x_continuous(breaks=anos)


#Gr�fico Violino
gapminder %>% 
  filter(year==2007) %>% 
  ggplot(.,aes(x=continent, y=lifeExp, fill=continent))+
  geom_violin()+
  labs(x="Continente", y="Expectativa de Vida ao Nascer", colour="continent")


#Gr�fico Violino Anos
anos = seq(1957, 2007)
gapminder %>% 
  filter(year %in% anos) %>% 
  ggplot(.,aes(x=continent, y=lifeExp, fill=continent))+
  geom_violin()+
  labs(x="Continente", y="Expectativa de Vida ao Nascer", colour="continent")+
  facet_wrap(~year, nrow=3)+
  theme(axis.text.x = element_text(angle=90, vjust=0.5, hjust=1) )
