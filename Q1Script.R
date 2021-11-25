library('ggplot2')

data <- read.table(file = 'StockData.txt',header=TRUE)

plot <- ggplot(data, aes(x = AAPL,y = S.P)) +
          geom_point() +
          xlab('AAPL Daily Return') +
          ylab('S&P Daily Return') +
          stat_smooth(method = 'lm') +
          labs(title = 'Daily Returns of AAPL and S&P500') +
          theme_classic()
          
ggsave('Q1_plot1.jpg', plot = plot, width = 12, height = 8, dpi = 500)

