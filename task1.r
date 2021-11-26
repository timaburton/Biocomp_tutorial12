# This data show number of quakes greater than the magnitude 7 from 1900 to 2000. We hae slightly less number of powerful earhtqquakes nowadays.
quakes<-read.table("https://seattlecentral.edu/qelp/sets/039/s039.txt", sep="\t", header=T)
names(quakes) = c("years","earthquakes")
reg1 <- lm(years~earthquakes,data=quakes)
with(quakes,plot(years,earthquakes))
abline(reg1)
