# Code for plot 2: Time series of Global active power over time

# Data is from https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

# Read the data into R
rawdata <-read.table("household_power_consumption.txt", sep=";", header = TRUE)

# Subset out data within the relevant timeframe
data <- rawdata[rawdata$Date == "1/2/2007" | rawdata$Date == "2/2/2007",]

# Convert to plotting data to numerical values
plot2data <- as.numeric(as.character(data$Global_active_power))

# Convert date and time
timedata <- paste(data$Date, data$Time)
timedata <- strptime(timedata, "%d/%m/%Y %H:%M:%S") 


# Plot the line graph with attributes required and save as a png file
png("plot2.png", width = 480, height = 480)
plot(timedata, plot2data, type="l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()
