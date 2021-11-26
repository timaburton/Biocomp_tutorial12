###Exercise10 answers
##Answer to problem 1
#Read in data

Barkleydata<-read.csv("Barkley_data.csv", header = TRUE)
Barkleydata<- Barkleydata[Barkleydata$GS == "*",]
#Use ggplot
library(ggplot2)
ggplot(Barkleydata,aes(x= Rk, y = Y.A))+
  geom_point()+
  stat_smooth(method = "lm")+
  xlab("Games in League")+
  ylab("Yards per Rushing Attempt")+
  theme_classic()


##Answer to number 2
#read in data
dt<-read.csv("data.txt")
ggplot(dt, aes(region, observations))+
  geom_bar(position = "dodge",
           stat = "summary",
           fun = "mean")
ggplot(dt, aes(region,observations))+
  geom_jitter()

#Answer: The means make them seem very consistent, all around the same number 15, however looking at the scatter plot shows that the observations spread changes for each region, all with an average of about the same!