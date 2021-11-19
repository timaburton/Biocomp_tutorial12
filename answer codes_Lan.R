setwd("Desktop/Biocomp_tutorial12/")
library(ggplot2)
rm(list = ls())
#1. a scatter plot of those two variables (time and the amount of cumulative drug release)
a <-  read.table("drug_release.txt", header = T, sep = "", stringsAsFactors = F)
head(a)
ggplot(a,aes(x = hours, y = cumulative_drug_release)) +
  geom_point(size = 3) +
  stat_smooth(se=FALSE) +
  xlab("Time (hour)") +
  ylab("cumulative drug release (ng)") +
  theme_classic() +
  theme(legend.title=element_blank())

# 2-1 a barplot of the means of the four populations
b <-  read.table("data.txt", header = T, sep = ",", stringsAsFactors = F)
head(b)
ggplot(b, aes(x = region, y = observations)) +
  stat_summary(fun = mean, geom = "bar") +
  xlab("region") +
  ylab("population") +
  theme_classic()

#2-2 a scatter plot of all of the observations
ggplot(b, aes(x = region, y = observations)) +
  geom_jitter(size = 1)+
  theme_classic()

#2-3 Do the bar and scatter plots tell you different stories? Why?
# Yes. Population for all groups seem to be the same in the bar plot but they are slightly different from the scatter plot.
# The reason is that bar plots mainly show the mean values, but less direct for showing the data distribution; instead, scatter plots can directly show the data distribution including outliers, but are hard to see the mean values. 
