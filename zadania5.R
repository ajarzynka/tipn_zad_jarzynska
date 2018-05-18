library(tidyverse)
library(dplyr)

# Zad 5-1
library(readr)
movies <- read_csv("C:/Users/kt/Desktop/hub/tipn_zad_jarzynska/movies.csv")
View(movies)


# Zad 5-2
filter(movies, year == 2005, Comedy == 1)

# Zad 5-3
select(movies, title, year, budget) %>% 
  arrange(movies, desc(budget))

# Zad 5-4
filter(movies, year >= 1990 & year < 2000, Animation == 1) %>% 
  arrange(desc(budget))

# Zad 5-5
filter(movies, Drama == 1) %>% 
  arrange(desc(length))

# Zad 5-6
movies %>% 
  group_by(mpaa) %>% 
  summarise(średnia_ocena = mean(rating),
            odchylenie = sd(rating, na.rm = T))


  


            