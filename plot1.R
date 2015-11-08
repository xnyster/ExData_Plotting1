# Code for plot 1: Histogram of Global active power

# Data is from https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

# Read the data into R
rawdata <-read.table("household_power_consumption.txt", sep=";", header = TRUE)

# Subset out data within the relevant timeframe
data <- rawdata[rawdata$Date == "1/2/2007" | rawdata$Date == "2/2/2007",]

# Convert to plotting data to numerical values
plot1data <- as.numeric(as.character(data$Global_active_power))

# Plot the histogram with attributes required and save as a png file
png("plot1.png", width = 480, height = 480)
hist(plot1data, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
