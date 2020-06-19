# Make density plots of age grouped by sex.
# Try experimenting with combinations of faceting, alpha blending, stacking
# and using variable counts on the y-axis to answer the following questions.

library(tidyverse)
library(titanic)
titanic %>% 
  filter(!is.na(Age) & Age <=90 ) %>%
  ggplot(aes(Age, color=Sex)) +
  geom_density()
# to count the number of males and females
tab_sex <- table(titanic$Sex)
sum(tab_sex)
tab_sex
# to count the number of males and females of 40 years old
tab_sex_40 <- titanic %>% 
  filter(Age==40)
sex_40<-table(tab_sex_40$Sex)
sex_40
#The proportion of males age 18-35 was higher than the proportion of females age 18-35. 
tab_sex_18_35 <- titanic %>% 
  filter(Age>=18 & Age <= 35)
prop.table(table(tab_sex_18_35$Sex))
#The proportion of females under age 17 was higher than the proportion of males under age 17. 
tab_sex_17 <- titanic %>% 
  filter(Age <= 17)
prop.table(table(tab_sex_17$Sex))
#The oldest passengers were female. 
old_p<-titanic %>%   filter(!is.na(Age)) %>%
  summarize(maximum = max(Age)) 
old_p

# Which of the following are true? Select all correct answers.
# (V) Females and males had the same general shape of age distribution. 
# (V) The age distribution was bimodal, with one mode around 25 years of age and a second smaller mode around 5 years of age. 
# (F) There were more females than males. 
# (V) The count of males of age 40 was higher than the count of females of age 40. 
# (V) The proportion of males age 18-35 was higher than the proportion of females age 18-35. 
# (V) The proportion of females under age 17 was higher than the proportion of males under age 17. 
# (F) The oldest passengers were female. 

