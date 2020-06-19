# Use geom_qq() to make a QQ-plot of passenger age and add an identity line with geom_abline().
# Filter out any individuals with an age of NA first.
# Use the following object as the dparams argument in geom_qq(): 

# basic QQ-plot
p <- titanic %>% filter(!is.na(Age)) %>%
  ggplot(aes(sample = Age))
p + geom_qq()

# QQ-plot against a normal distribution with same mean/sd as data
params <- titanic %>%
  filter(!is.na(Age)) %>%
  summarize(mean = mean(Age), sd = sd(Age))
p + geom_qq(dparams = params) +
  geom_abline()

# The third graphic

