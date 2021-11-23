#Tutorial 12 Assignment 
setwd("/Users/erinmaron/Desktop/r-novice-inflammation/BioComp/ClassWork/Biocomp_tutorial12")

#Problem 1
#Uses Energy vs. Time Data for a football player doing a flip, data collected from a Physics project 
library(ggplot2)
data<-read.table(file="Energy.txt", header=TRUE, sep="\t")

ggplot(data=data, aes(x=Time, y=Energy))+
  geom_point() +
  ylab("Energy(J)")+
  xlab("Time(s)")+
  theme_classic()+
  stat_smooth(method = "lm")

#Problem 2 
obsv<-read.table(file="data.txt", header=TRUE, sep=",")
#Barplot using means of 4 populations 
ggplot(data=obsv, aes(x=region))+
  geom_bar()+
  theme_classic()

#Scatterplot of all observations (jitter)
ggplot(data=obsv, aes(x=region, y=observations))+
  geom_jitter()+
  theme_classic()

  #The two plots do tell different stories, as the scatterplot shows the distribution of the population 
#as well as the different groupings of data. It allows for a visualization of the distribution by region.
#The bar plot does not show much information besides the total number of observations within a region.
#There is no way to diffrentiate from the regions, it is only shown that they all have the same total count. 