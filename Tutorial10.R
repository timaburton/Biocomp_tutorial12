#Question 1
setwd("C:/Users/megan/Desktop/r-novice-inflammation/r-novice-inflammation-data/data")
data <- read.csv("wages.csv", header=TRUE, stringsAsFactors = FALSE)
library(ggplot2)
ggplot(data, aes(x=yearsSchool, y=wage))+
  geom_point()+
  geom_smooth(method ="lm")+
  theme_classic()


  
#Question2
dat <- read.table("data.txt", sep = ",", header = TRUE, stringsAsFactors = FALSE)
#scatter plot
ggplot(dat, aes(x=region, y=observations))+
  geom_point(alpha=0.1)+
  geom_jitter()+
  theme_classic()
#bar graph
ggplot(dat, aes(x=region, y = observations))+
  geom_bar(position = "dodge" , stat = "summary", fun = "mean")

##The bar graphs and the scatter plot show different stories because the bar graph only shows mean observations 
#of each region whereas the scatterplot shows you more of the distrubtion of the observations and the range 
#of the observation