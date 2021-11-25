library('ggplot2')

data <- read.table(file = 'data.txt', header = TRUE, sep = ',')

plot1 <- ggplot(data, aes(x = region, y = observations)) +
          stat_summary(fun = mean, geom = 'bar') +
          scale_y_continuous(expand = c(0,0)) +
          theme_classic()

plot2 <- ggplot(data, aes(x = region, y = observations, color = region)) +
          geom_jitter() +
          scale_y_continuous(expand = c(0,0)) +
          theme_classic()

#The two plots tell a different story. The barplot loses some information about the data set
#since it only shows the averages of the data, and nothing about the distribution of the 
#points within the set. The scatterplot shows that even though these data have similar means,
#their distribution patterns are different

ggsave('Q2_plot1.jpg', plot = plot1, width = 12, height = 8, dpi = 500)
ggsave('Q2_plot2.jpg', plot = plot2, width = 12, height = 8, dpi = 500)

