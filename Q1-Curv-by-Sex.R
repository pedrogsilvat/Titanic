library(tidyverse)
library(titanic)
titanic %>% 
  filter(!is.na(Age)) %>%
  ggplot(aes(Age, color=Sex)) +
  geom_density()
