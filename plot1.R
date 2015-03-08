# Exploratory Data Analysis - Plotting Assignment 1
# plot1.R generates plot1.png using the file household_power_consumption.txt 
dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Subsetting the data
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetData$Global_active_power)

# generate plot1
png("plot1.png", width=480, height=480, units = "px")
hist(globalActivePower, main="Global Active Power", col="red", xlab="Global Active Power (Kilowatts)")
dev.off()