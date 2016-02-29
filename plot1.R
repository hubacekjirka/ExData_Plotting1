setwd("C:/OneDrive/Documents/Coursera/Exploratory data analysis/ProgAss1/source")
source("./load_data.R")

srcData <- load_data()

png("plot1.png", width = 480, height = 480)
with(srcData, hist(Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red"))
dev.off()