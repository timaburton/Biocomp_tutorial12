# Tutorial 12 
## Exercise 10 

# Question 1

# Set working directory
setwd("~/Desktop/Fall-2021/Biocomputing/Biocomp_tutorial12/")

# Load marathon pace data text file 
marathon <- read.table("Marathon_Pace.txt", header = FALSE, sep = "\t", stringsAsFactors = FALSE)
colnames(marathon) <- c("mile","time")

# Load ggplot library and check marathon file for headers
head(marathon)
library(ggplot2)

# Scatter plot of two variables: mile count vs time in minutes
ggplot(marathon, aes(x=mile,y=time))+
  geom_point(size=3)+
  xlab("Mile Count")+
  ylab("Time Spent Running (minutes)")+
  theme_classic()+
  geom_smooth(method="lm") # Include trend line 


# Question 2

