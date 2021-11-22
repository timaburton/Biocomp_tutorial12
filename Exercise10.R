# Exercise 10 - Analysis and plotting

# Loading the packages
library(ggplot2)
library(cowplot)

# First problem
chithonHR = read.csv("ChicagoMarathon2.csv", header=TRUE, stringsAsFactors=FALSE)
ggplot(data=chithonHR, aes(x=Miles.run,y=HR)) +
  geom_point() +
  theme_classic() +
  stat_smooth(method="loess") +
  xlab("Miles Run") +
  ylab("Heart Rate") +
  ggtitle("Chicago Marathon")

# Second problem
popdata = read.table("data.txt", header=TRUE, sep=",", stringsAsFactors=FALSE)
# Show a barplot of the means of the four populations
popbarplot = ggplot(data=popdata, aes(x=region,y=observations)) + 
  stat_summary(fun=mean, geom="bar") + 
  xlab("Region") + 
  ylab("Population Mean") + 
  theme_classic()
# Show a scatterplot of all of the observations
popscatterplot = ggplot(data=popdata, aes(x=region,y=observations)) + 
  geom_point() + geom_jitter(alpha=0.1) + 
  xlab("Region") + 
  ylab("Observation") + 
  theme_classic()
# Display plots together for comparison
popcomparison = plot_grid(popbarplot, popscatterplot)
popcomparison
# These two plots do give very different representations of the data.
# The bar plot demonstrates that the population means of each region are similar.
# The scatter plot shows how there are different ranges of observations. 
# While the means are similar, the distribution of observations is very different.