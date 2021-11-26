#navigate to working directory
setwd("C:Desktop/R Studio Projects/Biocomp_tutorial12/")

#load packages
library(ggplot2)
library(cowplot)

## Problem 1
#outside data used from research project on Age and Pregnancy Occurance
research <- read_csv("research.csv")
View(research)
research <- read.table("research.csv", header = TRUE, sep = ',',stringsAsFactors = FALSE)

fig1 <- ggplot(research, aes(x = Age, y = Pregnancies)) +
  stat_smooth(method="loess") +
  geom_point() +
  theme_classic() +
  xlab("Age (years)") +
  ylab("Pregnancies") +
  ggtitle("Age v. Number of Pregnancies")

##Problem 2
#import and read data
data = read.table("data.txt", header=TRUE, sep=",", stringsAsFactors = FALSE)

#barplot
fig2 <- ggplot(data, aes(x = region, y = observations)) +
  stat_summary(fun = mean, geom = "bar") +
  xlab("Region") +
  ylab("Average Population") +
  theme_classic()

#scatterplot
fig3 <- ggplot(data = data, aes(x = region, y = observations)) +
  geom_point() +
  geom_jitter() +
  xlab("Region") +
  ylab("Observation") +
  theme_classic()
