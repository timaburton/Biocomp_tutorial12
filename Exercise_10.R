# Exercise 10 

## 1. create scatter plot 

# load the package 
library(ggplot2)

# read data
mammals = read.table("/Users/erinlewis/Desktop/Biocomp_tutorial12/mammals.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE)

# plot of body weight (log body weight (kg)) vs. brain weight (log brain weight (kg)) in mammals
ggplot(data = mammals, 
       aes(x = log_body, y = log_brain)) +
  geom_point() +
  xlab("body weight (kg)") + 
  ylab("brain weight (kg)") +
  stat_smooth(method="lm") +
  theme_classic()

## 2. generate 2 figures for data.txt

# read data 
info = read.table("/Users/erinlewis/Desktop/Biocomp_tutorial12/data.txt", header=TRUE, sep=",", stringsAsFactors=FALSE)

#get mean values for each direction 
  sumNorth<-0
  sumSouth<-0
  sumWest<-0
  sumEast<-0

  obsNorth<-0
  obsSouth<-0
  obsWest<-0
  obsEast<-0

for(i in 1:nrow(info)){
  if(info$region[i]=="north"){
    sumNorth=sumNorth+info$observations[i]
    obsNorth=obsNorth+1
  }else if(info$region[i]=="south"){
    sumSouth=sumSouth+info$observations[i]
    obsSouth=obsSouth+1
  }else if(info$region[i]=="west"){
    sumWest=sumWest+info$observations[i]
    obsWest=obsWest+1
  }else if(info$region[i]=="east"){
    sumEast=sumEast+info$observations[i]
    obsEast=obsEast+1 
  }
}

  meanInfo = data.frame(region = c("north", "south", "west", "east"),
                        means = c(sumNorth/obsNorth, sumSouth/obsSouth, sumWest/obsWest, sumEast/obsEast))

# bar plot 
ggplot(data = meanInfo, 
        aes(x = region, y = means)) +
  geom_bar(stat = "identity", fill = "orange")

# scatter plot
ggplot(data = info, 
       aes(x = region, y = observations)) +
  geom_jitter()


## The scatter plot and the bar plot tell very different stories. The bar plot only shows the means of each
## population. All the populations have similar means, so they all look very similar on the bar graph. The
## scatter plot, in contrast, shows all the observations individually as points, and you can see that how the
## populations are distributed differently. The north population, for example, is concentrated around 
## 15, while the south population has no observations at 15 at all! Thus, it is clear that though the means
## of the populations may be similar, their distribution along the gradient is not. 
