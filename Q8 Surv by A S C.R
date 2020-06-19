# Create a grid of density plots for age, filled by survival status, 
#     with count on the y-axis, faceted by sex and passenger class.
titanic %>%
  ggplot(aes(Age, y = ..count.., fill = Survived)) +
  geom_density(position = "stack") +
  facet_grid(Sex ~ Pclass)

# Which of the following are true? Select all correct answers.

# (T) The largest group of passengers was third-class males. 
titanic %>%
  ggplot(aes(Sex)) +
  geom_density() +
  ylab("Count") +
  facet_grid(. ~ Pclass)

# (F) The age distribution is the same across passenger classes. 
titanic %>%
  ggplot(aes(Age)) +
  geom_density() +
  ylab("Count") +
  facet_grid(. ~ Pclass)

# (F) The gender distribution is the same across passenger classes. 
titanic %>%
  ggplot(aes(Sex)) +
  geom_density() +
  ylab("Count") +
  facet_grid(. ~ Pclass)

# (T) Most first-class and second-class females survived. 

# (T) Almost all second-class males did not survive, with the exception of children. 

