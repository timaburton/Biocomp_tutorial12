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

# The bar graph and scatter plot tell different stories because the scatter plot shows a wide range of values
# whereas the bar graph is pretty much all the same values. The averages happen to be similar but the data
# points for east, west, and south are not very grouped.
