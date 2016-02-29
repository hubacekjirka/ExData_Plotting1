setwd("C:/OneDrive/Documents/Coursera/Exploratory data analysis/ProgAss1/source")
source("./load_data.R")

srcData <- load_data()

png("plot2.png", width = 480, height = 480)
with(srcData, plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off()