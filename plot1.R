
require(lubridate)
require(grDevices)
png(filename = "plot1.png", width = 480, height = 480)

par(mfrow=c(1,1))
thedata<-read.table("household_power_consumption.txt", skip=66637, nrows=2880, sep= ";")
colnames(thedata)<-c("Date","Time","Global_active_power","Global_reactive_power",
                     "Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
thedata$Date<-dmy(thedata$Date)


hist(thedata$Global_active_power, breaks = 12, col="red", main = "Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()