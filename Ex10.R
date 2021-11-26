##Exercise 10 Biocomp
##Week of Nov 22
##Dianna Perez

# 1. write a script that loads the text file and converts it into a scatterplot
#    with a trendline
# I will investigate Grape Yield vs. Average Growing Season Temperature

grapes <- read.csv("Biocomp-Exercise10/grapedata.csv", header = TRUE)

ggplot(data = grapes, aes(x=avg_temp, y=yield)) +
  geom_point() +
  stat_smooth(method = "lm") +
  xlab("Average Temperature (Degrees Celsius)")+
  ylab("Grape Yield (hl/hectare)") +
  theme_classic()


#2. Look at data.txt file; 2 summarizing figures
data<-read.csv("Biocomp-Exercise10/data.txt")

# bar plot of means of 4 populations
barplot <- ggplot(data=data, aes(x=region, y=observations)) +
  stat_summary(geom = "bar", fun="mean") +
  stat_summary(geom = "errorbar", fun.data = "mean_se") +
  xlab("Populations")  +
  ylab("Observations") +
  theme_classic()

# scatterplot with observations organized by region
scatterplot <- ggplot(data=data, aes(x=region, y=observations)) +
  geom_jitter() +
  theme_classic()

# Do these figures tell different stories? Why?
# Yes, the two figures provide different stories. The barplot provides a summary 
#   of the observations in each region by providing the mean and error bars, 
#   which all see to be fairly close to 15 across each region, with little 
#   difference in variation. However, looking at the scatterplot, it is apparent 
#   that the distribution of observations in each region differ quite a bit.
#   Their averages do even out to around 15 but the East region follows sort of 
#   a normal distribution, North has its observations concentrated around the 
#   average with precision, South has a bimodal distribution that averages out to 15,
# and the west has a uniform distribution between 0 and 30 it seems that averages to 15.
# Looking at the barplot, the differences between each region's variances are not 
# very apparent and there is no indication of how much the mean differs from the median
# which could otherwise help to see the differences between each region.



