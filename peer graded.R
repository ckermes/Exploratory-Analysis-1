filename <- "./household_power_consumption.txt"
library(reshape2)
library(lubridate)

##rawData <- read.table(filename[filename$date == "01-02-2007" | filename$date == "02-02-2007"]
rawData <- read.table(filename, sep = ";", header = TRUE)
as.POSIXct(rawData$Date)
day1 <-subset(rawData, Date == as.Date("2007-02-01"))
day2 <- subset(rawData, Date == as.Date("2007-02-02"))
twodays <- rbind(day1, day2)