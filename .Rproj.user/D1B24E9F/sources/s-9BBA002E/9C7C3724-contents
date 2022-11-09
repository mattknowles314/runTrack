library(dplyr)
library(tidyr)

activities <- read.csv("Data/Activities.csv", header = TRUE)

# Separate "Time" into component parts - converting to integers
activities_tidy <- separate(activities, Time, into = (c("minute", "second", "centisecond")), convert = TRUE)
## Warning: Too few values at 2 locations: 57, 110
# Calculate total minutes, if first character is less than 5, treat as an hour unit, else, assume it's in minutes
activities_tidy$total_mins <- ifelse((activities_tidy$minute < 5), 
                                   activities_tidy$minute * 60 + activities_tidy$second,
                                   activities_tidy$minute)


