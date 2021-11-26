library(ggplot2)
data <- read.table(file = "data.txt", header = T, sep = ",", stringsAsFactors = FALSE)

ggplot(data, aes(x = region, y = observations)) +
  stat_summary(fun = mean, geom = "bar") +
  xlab(“region") +
  ylab(“observations") +
  theme_classic()

ggplot(data = data,aes(x = region, y = observations)) +
  geom_point() +
  geom_jitter()
  xlab(“region") +
  ylab(“observations") +
  theme_classic()

# Barplot does not show us the great variance in diffrent regions here. SInce means are very similar we might be deceived. Jitterplot shows us the spread of clusters which gives us more information.
