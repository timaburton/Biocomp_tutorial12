##Generate a barplot of the means of the four populations

#Load the data file
df <- read.table("data.txt", header = TRUE, sep=",", stringsAsFactors = TRUE)

#Create the barplot
ggplot(data = df, aes(x = region, y = observations))+
  stat_summary(fun = mean, geom = "bar")+
  theme_classic()

##Generate a scatterplot of all of the observations

ggplot(data = df, aes(x = region, y = observations)) +
  geom_point() +
  geom_jitter() +
  theme_classic()

#The barplot of the means, without error bars, makes the data appear as though 
#the observations from the four regions are very similar. While the means of the 
#regions are similar, the scatterplot shows that the clustering of the data is 
#very different across the regions and the north region is the only region with 
#observations clustered around the mean. Error bars on the barplot would show 
#the data more accurately. 
