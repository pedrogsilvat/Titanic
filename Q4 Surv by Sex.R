# Make barplots of the Survived and Sex variables using geom_bar().
# Try plotting one variable and filling by the other variable.
# You may want to try the default plot, then try adding 
#     position = position_dodge() to geom_bar() to make separate bars for each group.
# More about making barplots in the textbook section on ggplot2 geometries.

# Which of the following are true? Select all correct answers.
# Less than half of passengers survived. 
p <- titanic %>%
    ggplot(aes(x = Survived, fill= Sex))
p + geom_bar()

p <- titanic %>%
  ggplot(aes(x = Sex, fill= Survived))
p + geom_bar()
# Most of the survivors were female. 
# Most of the males survived. 
# Most of the females survived. 

