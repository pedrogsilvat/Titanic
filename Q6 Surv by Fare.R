# Filter the data to remove individuals who paid a fare of 0.
# Make a boxplot of fare grouped by survival status. 
# Try a log2 transformation of fares.
# Add the data points with jitter and alpha blending.
data_fare <- titanic %>%
    filter(!is.na(Fare) & Fare > 0) %>%
    ggplot(aes(Fare, Survived))
data_fare + scale_x_log10() + 
  geom_jitter(width = 0.1, alpha = 0.2) + 
  geom_boxplot()

# Which of the following are true? Select all correct answers.
# (T) Passengers who survived generally payed higher fares than those who did not survive. 
# (F) The interquartile range for fares was smaller for passengers who survived. 
# (T) The median fare was lower for passengers who did not survive. 
# (F) Only one individual paid a fare around $500. That individual survived. 
# (T) Most individuals who paid a fare around $8 did not survive. 