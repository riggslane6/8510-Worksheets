filter(gayguides, grepl('(G)', amenityfeatures))
#G stood for girls, L later stood for ladies 

gayguides %>%
  filter(grepl("G"), amenityfeatures)

lanefunction<- function(gg.year, gg.state) 
  gayguides %>%
  select(title, type, state, Year) %>%
  filter(state == gg.state & Year == gg.year) %>%


lanefunction(1980, "SC")

library(gapminder)
library(ggplot2)
library(tidyverse)
library(DigitalMethodsData)

data(gayguides)


activity <- gayguides %>%
  #deleted select
  filter(Year == 1980) %>%
  group_by(state) %>%
  #we don't need year because we are only looking at one year, duh 
  summarize(count = n())
  #we originally forgot summarize 


ggplot(data = activity, mapping = aes(x = state, y = count)) + geom_col()

data("gayguides")


classactivity <- gayguides %>%
  filter(state == "MA") %>%
  group_by(Year) %>%
  summarize(count = n())

ggplot(data = classactivity, mapping = aes(x = Year, y = count)) + geom_col() + ggtitle("Population") + theme_minimal()



