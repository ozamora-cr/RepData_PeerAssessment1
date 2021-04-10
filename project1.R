
data <- read.csv("./activity/activity.csv")
library(ggplot2)
library(dplyr)
data$date <- as.Date(data$date)

## calculate steps taken per day

stepsPerDay <- tapply(data$steps, data$date, sum, na.rm=TRUE)
qplot(stepsPerDay, binwidth=1000, xlab="Steps per day")

mean(stepsPerDay, na.rm=TRUE)
median(stepsPerDay, na.rm=TRUE)


