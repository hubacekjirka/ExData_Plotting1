setwd("C:/OneDrive/Documents/Coursera/Exploratory data analysis/ProgAss1/source")
source("./load_data.R")

srcData <- load_data()

png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2), mar = c(2, 4, 2, 1), oma = c(0, 0, 2, 0), mgp = c(3,1,0) )

with(srcData, plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))

with(srcData, plot(DateTime, Voltage, type = "l", xlab = "", ylab = "Voltage"))

with(srcData, plot(DateTime, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering"))
with(srcData, lines(DateTime, Sub_metering_1, type = "l", col = "black"))
with(srcData, lines(DateTime, Sub_metering_2, type = "l", col = "red"))
with(srcData, lines(DateTime, Sub_metering_3, type = "l", col = "blue"))
legend("topright", lty = 1, col = c("black", "red", "blue"),legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")

with(srcData, plot(DateTime, Global_reactive_power, type = "l", xlab = "", ylab = "Global reactive power"))

dev.off()