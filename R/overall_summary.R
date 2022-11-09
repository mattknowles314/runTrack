library(dplyr)

activities %>% 
  group_by(Activity.Type) %>% 
  summarise(count = n(), Avg.Distance = round(mean(Distance), 0))
