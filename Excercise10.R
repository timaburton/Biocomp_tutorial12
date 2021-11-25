library(ggplot2)
#install.packages("gridExtra")
library(gridExtra)


##Question 1
#the EXPdata.txt is a recording of Oxygen consuming by time during experiment
#read the data
EXPdata=read.table(file="EXPdata.txt",header=TRUE,sep="\t",stringsAsFactors=FALSE)
#depict a scatter plot, change color to be blue 
plot0 <- ggplot(data = EXPdata,aes(x = time_min, y = Po2_mmHg)) +
  geom_point(color="blue") +
  #change the name of x and y axis
  xlab("ElapsedTime/min") +
  ylab("Pressure_of_O2/mmHg") +
  #add a trend line
  stat_smooth(method = 'loess')+
  #remove grey background and grid lines
  theme_classic()

#add empty figure
empty <- ggplot() + theme_void()



##Question2
## bar plot of the means of the four populations
#read the data
data=read.table(file="data.txt",header=TRUE,sep=",",stringsAsFactors=FALSE)
#depict bar plot of the means of the four populations
plot1 <- ggplot(data=data, aes(x = region, y = observations)) +
  stat_summary(fun = mean, geom = "bar")+
  #remove grey background and grid lines
  theme_classic()

## scatter plot of all of the observations in two ways
# 1st way, use geom_jitter() to show the distribution of plots by points number
#depict bar plot of the all observations of the four populations using different color
plot2 <- ggplot(data=data, aes(x = region, y = observations,col=region)) +
  #adding random noise to make it easier to read.
  geom_jitter()+
  #remove grey background and grid lines
  theme_classic()

#2rd way, adding transparency to show the distribution of plots by shades of color
plot3 <- ggplot(data=data, aes(x = region, y = observations,col=region)) +
  #adding transparency to points to make it easier to read
  geom_point(alpha = 0.1) +
  #remove grey background and grid lines
  theme_classic()

##arrange the figures by questions 
grid.arrange(plot0,empty,empty, plot1, plot2,plot3, ncol=3,nrow=2, heights=c(1,1))
Sys.sleep(1)