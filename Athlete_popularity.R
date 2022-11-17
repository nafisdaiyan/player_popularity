install.packages('gtrendsR')
library(gtrendsR)

names<- c('shakib', 'mahmudullah', 'mushfiq', 'messi', 'ronaldo')

iotplot<- plot(gtrends(names))
ggsave(filename = 'iotplot.jpg', plot=iotplot)

plotter<- function(c) {
  for (x in c) {
    p<-plot(gtrends(x))
    ggsave(filename= paste0(x,'.jpg'), plot=p)
  }
}
plotter(names)
  