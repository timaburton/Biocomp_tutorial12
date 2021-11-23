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
