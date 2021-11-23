## PROBLEM 1
# read in data
crime = read.table("crime.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE)

# load ggplot
library(ggplot2)

# use ggplot to produce scatterplot
ggplot(crime, aes(x=Year, y=Crime.Rate)) +
  geom_point() +
  xlab("Year") +
  ylab("Crime Rate (per 100,000 population)") +
  ggtitle("Crime Rate Overtime") +
  stat_smooth(method="loess") +
  theme_classic() 
  

## PROBLEM 2
# read in data
data = read.table("data.txt", header=TRUE, sep=",", stringsAsFactors = FALSE)

# use ggplot to produce barplot
ggplot(data, aes(x = region, y = observations)) +
  stat_summary(fun = mean, geom = "bar") +
  xlab("Region") +
  ylab("Average Population") +
  theme_classic()

# produce scatterplot
ggplot(data = data, aes(x = region, y = observations)) +
  geom_point() +
  geom_jitter() +
  theme_classic()

# the barplot and scatterplot are different because the scatterplot will show 
# the distribution of the data, whereas the barplot just reports the average.
# the barplot does not report very precisely. the scatterplot shows that for
# south, the data is very split (bimodal distribution). The barplot does not
# show this.