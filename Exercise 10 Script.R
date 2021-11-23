# read in data
crime = read.table("crime.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE)

# use ggplot to produce scatterplot
library(ggplot2)
ggplot(crime, aes(x=Year, y=Crime.Rate)) +
  geom_point() +
  xlab("Year") +
  ylab("Crime Rate (per 100,000 population)") +
  ggtitle("Crime Rate Overtime") +
  stat_smooth(method="loess") +
  theme_classic() 
  
