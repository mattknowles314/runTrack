library(ggcorrplot)
nums <- sapply(activities_tidy, is.numeric)
corr <- round(cor(activities_tidy[,nums], use = "pairwise.complete.obs"), 1)
ggcorrplot(corr, lab = T, lab_size = 3, method = "circle", colors = c("tomato2", "white", "springgreen3"))
