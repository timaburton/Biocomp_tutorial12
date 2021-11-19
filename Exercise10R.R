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
plot1<-ggplot(data, aes(x = region, y = observations, fill = region))+
  stat_summary(fun.y = mean, geom = "bar")+ 
  stat_summary(fun.data = mean_se, geom = "errorbar", width = 0.5 )+ xlab("Region")+
  ylab("Mean Observations")+ ggtitle("Mean Observations for each Region")+
  theme_bw() + theme(legend.position = "none")
plot1

#Produce a scatter plot of all the observations 
plot2<-ggplot(data, aes(x = region, y = observations, color = region))+
  geom_jitter() + xlab("Region") + ylab("Observations")+
  ggtitle("Observations for each Region")+ theme_bw()+
  theme(legend.position = "none")
plot2

#Show plots side by side for comparison
plot_grid(plot1, plot2, labels = c("a", "b"),
                  rel_widths = c(4, 4),
                  ncol = 2, nrow = 1)

#Do the bar and scatter plots tell different stories? Why?
#The bar graph and the scatter plot of the same data show different stories. 
#The bar graph is showing the mean of the overall data for each region, which were similar 
#to each other. The scatter plot shows each observation, there by showing the variation between
#the observations. Error bars were added to the bar graph to better represent the data. 

