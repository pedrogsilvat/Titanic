# Make three barplots.
# 1. A basic barplot of passenger class filled by survival.
titanic %>%
    ggplot(aes(Pclass, fill=Survived)) +
    geom_bar() +
    ylab("Count")
# 2. The same barplot but use the argument position = position_fill() to show 
#     relative proportions in each group instead of counts. 
titanic %>% 
  ggplot(aes(Pclass, fill=Survived)) +
  geom_bar(position = position_fill()) +
  ylab("Proportion")
# 3. A barplot of survival filled by passenger class using position = position_fill().
titanic %>%
  ggplot(aes(Survived, fill=Pclass)) +
  geom_bar(position = position_fill()) +
  ylab("Proportion")

# Which of the following are true? Select all correct answers.
# (T) There were more third class passengers than passengers in the first two classes combined. 
# (T) There were the fewest passengers in first class, second-most passengers in second class, and most passengers in third class. 
# (T) Survival proportion was highest for first class passengers, followed by second class. Third-class had the lowest survival proportion. 
# (T) Most passengers in first class survived. Most passengers in other classes did not survive. 
# (T) The majority of survivors were from first class. (Majority means over 50%.) 
# (T) The majority of those who did not survive were from third class. 

