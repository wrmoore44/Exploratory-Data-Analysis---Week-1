theData <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
theData <- theData[theData$Date %in% c("1/2/2007","2/2/2007"),]
globalActivePower <- as.numeric(theData$Global_active_power)
dateTime <- parse_date_time(paste(theData$Date, theData$Time, sep=" "), "dmy HMS") 
png("plot2.png", width=480, height=480)
plot(dateTime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()