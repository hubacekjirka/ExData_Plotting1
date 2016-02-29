load_data <- function() {
        setwd("C:/OneDrive/Documents/Coursera/Exploratory data analysis/ProgAss1/source")
        
        sourceFile <- "./household_power_consumption.txt"
        zipFile <- "./household_power_consumption.zip"
        rdsFile <- "./household_power_consumption.rds"
        
        if(!file.exists(rdsFile)) {
                library(dplyr)
        
                if(!file.exists(sourceFile)) {
                        library(httr)
                        httpLink <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
                        download.file(httpLink, zipFile, mode="wb")
                        unzip(zipFile, overwrite = TRUE)
                }
                
                srcData <- read.table(sourceFile, header = TRUE, sep = ";", colClasses = c("character", "character", rep("numeric", 7)), na = "?") %>%
                                tbl_df %>%
                                filter(Date == "1/2/2007" | Date == "2/2/2007") %>%
                                mutate(DateTime = as.POSIXct(strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S"))) %>%
                                select(-Date,-Time)
                
                saveRDS(srcData, rdsFile)
                return(srcData)
        } else {
                return(readRDS(rdsFile))
        }
}