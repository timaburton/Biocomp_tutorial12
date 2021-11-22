rm(list=ls())
library(ggplot2)
library(cowplot)

# load data
file = "homeless_students_enrolled_in_public_school_usafacts.csv"
fileData = read.csv(file, header=T, stringsAsFactors = F)

# plot data
ggplot(data = fileData,
       aes(x = Year, y = People)) +
  geom_point() +
  stat_smooth(formula = y~x, method="lm")+
  theme_classic()
