### Exercise 10 Code
##Problem 1 - plot of scatter plot of heart rate vs. age with trend line

# wrote "data3.txt" with 27 age and heart rate data points.
# load text file 
data <- read.table("data3.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)

# use ggplot to produce scatter plot of the two variable data with a trend line
library(ggplot2)
ggplot(data, aes(x=Age, y=Heartrate)) +
  geom_point() +
  xlab("age (months)") +
  ylab("heart rate (bpm)") +
  stat_smooth(method="lm") +
  theme_classic()


## Problem 2 - two figures that summarize "data.txt"

# load data.txt
data <- read.table("data.txt", header=TRUE, sep = ",", stringsAsFactors = FALSE)

## bar plot of means of the four populations
ggplot(data, aes(x=region, y=observations)) +
  geom_bar(stat = "summary", fun.y="mean") +
  theme_bw() +
  xlab("region") +
  ylab("mean observation") +
  theme(axis.text.x = element_text(angle=65, vjust=0.6))
  
## scatter plot of all observations
ggplot(data, aes(x=region, y=observations)) +
  geom_jitter(alpha=0.1) +
  xlab("region") +
  ylab("obersations") +
  theme_classic()

# Do the bar and scatter plots tell you different stories? - YES
# While the bar plot shows that each population has a mean observation around
# 15, the scatter plot shows that the distribution of observations differs
# by region, with north oberservations clumped around 15, east and west observations
# spread relatively evenly between 0 and 30, and south observations clumped into
# two gorups around 5 and 25.