setwd("~/OneDrive - Johns Hopkins/Documents/Notre Dame/Semester 1/Introduction to Biocomputing/Biocomp_tutorial12/")

# load packages in
library(ggplot2)
library(cowplot)

### Problem 1 ###

# load in data
drug.el <- read.table(file = "drug-elimination.txt", header = TRUE, sep = '\t',stringsAsFactors = FALSE)

# scatter plot of data
fig1 <- ggplot(drug.el, aes(x = Time, y = Drug.Concentration)) +
  stat_smooth(method="loess") +
  geom_point() +
  theme_classic() +
  xlab("Time (hr)") +
  ylab("[Drug] (mg/dL)") +
  ggtitle("Elimination of Drug over Time")

# alternative scatter plot of data with linear trend
fig2 <- ggplot(drug.el, aes(x = Time, y = ln.Drug.Concentration.)) +
  stat_smooth(method="lm") +
  geom_point() +
  theme_classic() +
  xlab("Time (hr)") +
  ylab("ln([Drug])") +
  ggtitle("Elimination of Drug over Time (Linearized)")

plot_grid(fig1, fig2, 
          labels = c("a", "b"),
          rel_widths = c(1, 0.85),
          ncol = 2,
          nrow = 1)

### Problem 2

# load in data
data <- read.table(file = "data.txt", header = TRUE, sep = ',',stringsAsFactors = FALSE)

# bar plot of mean of data
fig3 <- ggplot(data, aes(x = region, y = observations)) +
  stat_summary(fun.y = mean, geom ="bar") +
  theme_classic() +
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) +
  xlab("Region") +
  ylab("Observation")

# scatter plot of data
fig4 <- ggplot(data, aes(x = region, y = observations)) +
  geom_jitter() +
  theme_classic() +
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) +
  xlab("Region") +
  ylab("Observation")
 
plot_grid(fig3, fig4, 
          labels = c("a", "b"),
          rel_widths = c(1, 0.85),
          ncol = 2,
          nrow = 1)


# Based on the plots that were displayed, they do not tell the same story. While the bar plot shows that the mean
# value of the four populations is very similar, that does not necessarily mean the data that makes up each of these
# populations is spread out in a similar manner. This is evident in the scatter plot which shows that while the east 
# and west regions are quite spread out, this is not the case for the north on south regions which have pockets of 
# of data concentrated around a particular region. 

