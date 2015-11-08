# Code for plot 3: Time series over time for sub_metering 1, 2 and 3

# Data is from https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

# Read the data into R
rawdata <-read.table("household_power_consumption.txt", sep=";", header = TRUE)

# Subset out data within the relevant timeframe
data <- rawdata[rawdata$Date == "1/2/2007" | rawdata$Date == "2/2/2007",]

# Convert date and time
timedata <- paste(data$Date, data$Time)
timedata <- strptime(timedata, "%d/%m/%Y %H:%M:%S") 

# Plot the line graph with attributes required and save as a png file
png("plot3.png", width = 480, height = 480)
plot(timedata, as.numeric(as.character(data$Sub_metering_1)), type="l", ylab = "Energy sub metering", xlab = "")
lines(timedata, as.numeric(as.character(data$Sub_metering_2)), col = "red")
lines(timedata, as.numeric(as.character(data$Sub_metering_3)), col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black","red","blue"))
dev.off()
