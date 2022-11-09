library(dplyr)
library(ggplot2)

runs <- activities %>% 
  filter(Activity.Type == "Running")

ggplot(data = activities, aes(x = Avg.HR, y = Aerobic.TE)) +
  geom_point() + 
  stat_smooth(formula = y ~ x, method = "lm")

ggplot(data = activities, aes(x = Max.HR, y = Aerobic.TE)) +
  geom_point() + 
  stat_smooth(formula = y ~ x, method = "lm")


ggplot(data = activities, aes(x = Avg.HR, y = ..density..)) +
  geom_density()

ggplot(data = activities_tidy, aes(x = vo2max, y = ..density..)) +
  geom_density()

ggplot(data = activities_tidy, aes(x = Avg.HR, y = vo2max)) +
  geom_point() +
  stat_smooth(formula = y ~ x, method = "lm") 

ggplot(data = activities_tidy %>% filter(Activity.Type == "Running"), aes(x = Avg.Run.Cadence, y = vo2max)) +  geom_point() +
  stat_smooth()

