# Calculate VO2 Max per https://www.fetcheveryone.com/forum__58727__how_does_garmin_connect_calculate_vo2_max
# calculate meters per minute
activities_tidy$mpm <- (activities_tidy$Distance*1000)/activities_tidy$total_mins

# calculate VO2
activities_tidy$vo2 <- -4.6 + 0.182*activities_tidy$mpm + 0.000104*activities_tidy$mpm^2

# calculate % VO2 Max
activities_tidy$percentVO2 <- (activities_tidy$Avg.HR/activities_tidy$Max.HR - 0.37)/0.64

# calculate VO2 Max in ml/min/kg
activities_tidy$vo2max <- activities_tidy$vo2/activities_tidy$percentVO2


