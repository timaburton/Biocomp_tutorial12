## Exercise 10 - Analysis and plotting ##
## by Nicholas Ross on 11/22/2021

## Part 1- Plotting and comparing two variables from data set ##

# load ggplot library
library (ggplot2)

#read in data from outside source
stats = read.csv("NFL_Defense_stats_2021.csv", header = T, stringsAsFactors = F)

# set variable for ggplot we want to run
plot0 = ggplot(stats, aes(x = Rank, y = YDS.G))+
                
        #give color to points that relate to rankings
        geom_point(aes(color = Rank))+ 
        scale_color_gradientn(colors = terrain.colors(100))+ # set the color gradient to use
        xlab("Team Rank")+              # create x axis label
        ylab("Yards per Game Allowed")+ # create y axis label
        stat_smooth(method="lm")+       # implement trend line
        
        #set background to black to display colors clearly
        theme(panel.background = element_rect(fill = "black")) 


## Part 2- Side-by-side comparisons using plots ##

#if used in separate script, be sure load ggplot library with "library(ggplot2)"

#read in data from outside source
data = read.table("data.txt", header = T, sep = ",", stringsAsFactors = F)

# set variable equal to ggplot we want to implement
plot1 = ggplot(data, aes(x= region, y = observations, color = factor(region)))+
        stat_summary(fun = mean, geom = "bar")+ # plot as a function of the mean using bar graph
        xlab("Region")+                         # create x axis label
        ylab("Average Population")+             # create y axis label
        theme_classic()                         # set plot theme to classic
       
## the code below can be used to find the mean population for each region to ensure plot is accurate
## one could either replace each instance of "north" and "northMean" with a different
## region or extend the if-else statements to include all regions

# north = 0
# south = 0
# east = 0
# west = 0
# northMean = 0
# southMean = 0
# eastMean = 0
# westMean = 0
# 
# for (i in 1:nrow(data)){
#   if (data[i,1] == "north"){
#     north [i] = data[i,2]
#   }
# }
# northMean = mean(north)

# create second variable for ggplot to compare side by side with plot1
plot2 = ggplot(data, aes(x= region, y = observations))+
        geom_jitter(aes(color = factor(region)))+ # create scatter plot using regions as the color factor
        xlab("Region")+                           # create x axis label
        ylab("Average Population")+               # create y axis label
        theme_classic()                           # set plot theme to classic

# display plot1 and plot2 in the same viewing window
plot_grid(plot1,plot2) 

## In analyzing both plots, one can see that plot1 displays the average population
## per region. However, plot2 shows that plot1 doesn't tell the full story. The north
## region shows that almost all populations in that region are close to the average. The south, however,
## displays that none of the populations are equal to the average, but rather the populations are 
## quite larger or relatively small. 