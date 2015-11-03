require(grDevices)

png(filename = "plot2.png", width = 480, height = 480)
par(mfrow=c(1,1))
thedata<-read.table("household_power_consumption.txt", skip=66637, nrows=2880, sep= ";")
colnames(thedata)<-c("Date","Time","Global_active_power","Global_reactive_power",
                     "Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")


plot(thedata$Global_active_power, type = "l", ylab="Global Active Power (kilowatts)", xlab="", xaxt ="n")

axis(1, at = c(0, 1440, 2880), c("Thu", "Fri", "Sat"))


dev.off()