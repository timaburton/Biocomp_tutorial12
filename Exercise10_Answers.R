# Tutorial 12 
## Exercise 10 

# Set working directory
setwd("~/Desktop/Fall-2021/Biocomputing/Biocomp_tutorial12/")

# Load ggplot library
library(ggplot2)



# Question 1

# Load marathon pace data text file 
marathon <- read.table("Marathon_Pace.txt", header = FALSE, sep = "\t", stringsAsFactors = FALSE)
colnames(marathon) <- c("mile","time")
head(marathon)

# Scatter plot of two variables: mile count vs time in minutes
ggplot(data=marathon, aes(x=mile,y=time))+
  geom_point(size=3)+
  xlab("Mile Count")+
  ylab("Time Spent Running (minutes)")+
  theme_classic()+
  geom_smooth(method="lm") # Include trend line 



# Question 2

# Load data from data.txt
data <- read.table("data.txt", sep = ",", header=TRUE, stringsAsFactors = TRUE)
head(data)

# Bar plot of the means of the four populations
ggplot(data=data, aes(x=region,y=observations,fill=region))+
  stat_summary(fun='mean',geom='bar')+
  xlab("Region")+
  ylab("Mean of Observations")+
  theme_classic()

# Scatter plot of all observations 
ggplot(data=data, aes(x=region,y=observations,color=region))+
  geom_point()+
  geom_jitter()+
  xlab("Region")+
  ylab("Observations")+
  theme_classic()

## Do the bar and scatter plots tell you different stories? Why? 

# Yes, the scatter plots and bar plots tell very different stories. 
# The bar plot only shows the mean of each population, which are very similar for all of the regions. 
# This makes it look like the populations are very similar to each other in general. 
# The scatter plot shows every observation, and gives a more accurate picture of what each population looks like. 
# The East and West regions are more spread out, while the North region is concentrated in the middle and the South is concentrated on both ends. 
# While the mean for each region is almost the same, the distributions are very different. 







