#Exercise 10
install.packages("ggplot2")

#load a package every time you wish to use it
library(ggplot2)

#1 (FYI: please have patience as the plot will take a long time to load as it is the bitcoin daily HIHG/LOW prices for the past 10 years, lots of data points!)
setwd("~/Desktop/Biocomp_tutorial12-main/")
Bitcoin<-read.table("Bitcoin.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE)
head(Bitcoin)

#Scatter plot and tread line
ggplot(data=Bitcoin, aes(x=High, y=Low))+ 
  geom_point()+ 
  stat_smooth(method="lm", formula="y~x")+
  xlab("Price HIGH")+
  ylab("Price LOW")
  theme_classic()


#2
data1<-read.table("data.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE)

#barplot
ggplot(data=data1, aes(x="region", y="observations"))+ 
  stat_summary(fun=mean, geom="bar")+
  theme_classic()

#scatter plot
ggplot(data=data1, aes(x="region", y="observations"))+
  geom_jitter()+
  geom_point()+
  theme_classic()