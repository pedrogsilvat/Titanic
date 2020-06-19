# Install packages and create data file titanic
# install.packages("titanic")
options(digits = 3)    # report 3 significant digits
library(tidyverse)
library(titanic)
library(dplyr)
titanic <- titanic_train %>%
  select(Survived, Pclass, Sex, Age, SibSp, Parch, Fare) %>%
  mutate(Survived = factor(Survived),
         Pclass = factor(Pclass),
         Sex = factor(Sex))

#1: Ordinal Categorical 
#2: Non-Ordinal cagtegorical
#3: Continuos   
#4: Discrete 

#Survived (0, 1):      2
##Pclass(1,2,3)       1
#Sex (male,female):    2
#SibSp(0,1,2…8):       4
#Parch D (0,1,2…8):   4   
#Fare                  3

