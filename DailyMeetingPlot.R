#Generate a scatter plot showing the average time I spent in meetings (per day) during the month of November.

data = read.table("MeetingData.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
data$Day <- factor(data$Day, levels = data$Day)
library(ggplot2)
ggplot(data, aes(x = Day, y = Hours)) +
  geom_point() +
  theme_classic() +
  geom_smooth(method = "lm")

 
