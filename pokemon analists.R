library(tidyverse)
library(skimr)
pokemon<-read.csv("pokemon.csv")
view(pokemon)
summary(pokemon)
colnames(pokemon)
table(pokemon$is_lengendary)
table(pokemon$Generation)
table(pokemon$Type.1)
min(pokemon$HP)
max(pokemon$HP)
pokemon %>% filter(HP==1)->a
a
min(pokemon$Speed)
max(pokemon$Speed)
sum(is.null(pokemon))
colnames(pokemon)
colnames(pokemon)[colnames(pokemon)=="Type_1"]<- "primary_type"
colnames(pokemon)[colnames(pokemon)=="Type_2"]<- "second_type"

view(pokemon)

pokemon %>% filter(Type.1=="Grass")->grass_pokemon

view(grass_pokemon)
max(grass_pokemon$Speed)
min(grass_pokemon$Speed)

mean(grass_pokemon$Sp..Atk)
mean(grass_pokemon$Sp..Def)
avgrage(grass_pokemon$Sp..Atk)


ggplot(data=grass_pokemon)+geom_histogram(mapping = aes(x=HP,fill="HP"))
ggplot(data=grass_pokemon)+geom_histogram(mapping = aes(x=Speed,fill="green"))

ggplot(data=grass_pokemon)+geom_bar(mapping=aes(x=Legendary,fill="pokemon"))



pokemon %>% filter(Type.1=="Fire")->Fire_pokemon
view(Fire_pokemon)

min(Fire_pokemon$Speed)
max(Fire_pokemon$Speed)

mean(Fire_pokemon$Sp..Atk)
mean(Fire_pokemon$Sp..Def)


ggplot(data=Fire_pokemon)+geom_bar(mapping = aes(x=Generation,fill=Generation))



ggplot(data=Fire_pokemon)+geom_point(mapping=aes(x=Sp..Atk,y=Sp..Def,colours="red"))

ggplot(data=Fire_pokemon)+geom_point(mapping = aes(x=Attack,y=Defense,colour=Attack))
