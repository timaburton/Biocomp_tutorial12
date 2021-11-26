# Exercise 10

# task 1

setwd("/Users/johi/Desktop/Courses/Biocomputing/Biocomp_tutorial12")

# opening the initial data of Estonian corona statistics
data <- read.table(file = "opendata_covid19_tests_total.csv", header = T, sep = ",", stringsAsFactors = FALSE)
head(data)

# creating a new dataframe that contains 2 columns (days from the first Covid positive test and TotalCasesLast14D - the sum of positive cases last 14 days)
days = seq(1, dim(data)[1], 1)
last14cases = data$TotalCasesLast14D

coronaData = data.frame(days, last14cases)

#writing a new txt file fir the new dataframe
write.table(coronaData, file = "EstonianCoronaData.txt", sep = ",", col.names = TRUE)

data <- read.table(file = "EstonianCoronaData.txt", header = T, sep = ",", stringsAsFactors = FALSE)

# importing the ggplot library
library(ggplot2)

# plotting the data with trend line (polynomial trend line)
ggplot(data = data,aes(x = days, y = last14cases)) +
  geom_point() +
  stat_smooth() +
  xlab("Day from the start") +
  ylab("Total cases last 14 days") +
  theme_classic()


# task 2

data <- read.table(file = "data.txt", header = T, sep = ",", stringsAsFactors = FALSE)
tail(data)

# bar plot of the means of the four populations
ggplot(data, aes(x = region, y = observations)) +
  stat_summary(fun = mean, geom = "bar") +
  xlab("Region") +
  ylab("Observations") +
  theme_classic()

# scatterplot
ggplot(data = data,aes(x = region, y = observations)) +
  geom_point() +
  geom_jitter()
  xlab("Region") +
  ylab("Observations") +
  theme_classic()


# Although they are spread very differently, the means are basically the same.
# Therefore, there is no difference in the bar plot but when it comes to the scatterplot we can see the difference between the regional observations.
# Scatterplot shows the variance while the bar plot doesn't.


