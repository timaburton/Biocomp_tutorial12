rm(list=ls())
library(ggplot2)
library(cowplot)

# load data
file = "data.txt"
fileData = read.csv(file, header=T, stringsAsFactors = F)

# plot bar graph
ggplot(data = fileData,
       aes(x = region, y = observations)) +
  stat_summary(fun = mean,
               geom = "bar") 

# plot scatter plot
ggplot(data = fileData,
       aes(x = region, y = observations)) +
  geom_jitter(alpha = .1) 