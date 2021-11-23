#set working directory 
setwd("~/Desktop/r-novice-inflammation/Biocomp_tutorial12/")

################### number 1
#read in data 
data <- read.table(file="oat_smoothie_data - Sheet1.csv", header=TRUE, sep=",", stringsAsFactors = FALSE) 
data

#load ggplot
library(ggplot2)

#produce a scatter plot with a tend line 
ggplot(data=data, aes(x=day, y=oatmeal))+ geom_point() + stat_smooth(method="lm", formula="y~x") + theme_classic()


##################number 2
#read in data 
data <- read.table(file="data.txt", header=TRUE, sep=",", stringsAsFactors = FALSE)
data

#barplot of means of the four populations 
ggplot(data=data, aes(x=region, y=observations)) + stat_summary(fun=mean, geom="bar") +theme_classic() 

#scatter plot of all observations
ggplot(data=data, aes(x=region, y=observations)) + geom_point() + geom_jitter() + theme_classic()

#do the bar and scatter plots tell you different stories? 
#answer= yes, because the bar plot doesn't show you any sort of distribution, just the overall mean. 
#with the scatter plot, you can see that all of the observations in the regions are distributed differently depending on which region they are in. 