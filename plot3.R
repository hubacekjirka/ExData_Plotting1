setwd("C:/OneDrive/Documents/Coursera/Exploratory data analysis/ProgAss1/source")
source("./load_data.R")

srcData <- load_data()

png("plot3.png", width = 480, height = 480)

with(srcData, plot(DateTime, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering"))
with(srcData, lines(DateTime, Sub_metering_1, type = "l", col = "black"))
with(srcData, lines(DateTime, Sub_metering_2, type = "l", col = "red"))
with(srcData, lines(DateTime, Sub_metering_3, type = "l", col = "blue"))
legend("topright", lty = 1, col = c("black", "red", "blue"),legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()