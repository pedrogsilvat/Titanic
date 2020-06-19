# Make a density plot of age filled by survival status. 
# Change the y-axis to count and set alpha = 0.2.
p <- titanic %>%
  ggplot(aes(Age, fill = Survived))
a <- c(8,10,18,30,50,70,80,100)
p + geom_density(alpha = 0.2) +
   scale_x_continuous(breaks =a)

#Which age group is the only group more likely to survive than die?
#  0-8  10-18 18-30 30-50 50-70 70-80    0-8
#Which age group had the most deaths?
#  0-8 10-18 18-30 30-50 50-70 70-80    18-30
#Which age group had the highest proportion of deaths?
#  0-8 10-18 18-30 30-50 50-70 70-80    70-80
 p <- titanic %>%
   ggplot(aes(Age, fill = Survived))
   a <- c(8,10,18,30,50,70,80,100)
   p + geom_histogram(alpha = 0.2) +
   scale_x_continuous(breaks =a)
   
   