#Marlee Shaffer
#Exercise 10 - Analysis and Plotting 

#Set working directory 
setwd("~/Desktop/Biocomp_tutorial12")

#Load packages
library(ggplot2)
library(cowplot)

##Part 1
#Find data on two variables that you would expect to be related to each other 
#Write a script that loads the text file and produces a scatter plot with a trendline


##Part 2
#Write a script that generates two figures from data.txt
#Read the data.txt file 
data<-read.table("data.txt", header = TRUE, sep=",", stringsAsFactors = FALSE)

#Produce a bar plot of means of 4 populations
ggplot(data, aes(x = region, y = observations, color = region))+
  stat_summary(geom = "bar", fun = "mean")+ xlab("Region")+
  ylab("Mean Observations")+ ggtitle("Mean Observations for each Region")+
  theme_bw() + theme(legend.position = "none")

#Produce a scatterplot of all the observtions 


#Do the bar and scatter plots tell different stories? Why?

