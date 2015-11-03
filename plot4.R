
require(grDevices)
png(filename = "plot4.png", width = 480, height = 480)

par(mfrow=c(2,2))

thedata<-read.table("household_power_consumption.txt", skip=66637, nrows=2880, sep= ";")
colnames(thedata)<-c("Date","Time","Global_active_power","Global_reactive_power",
                     "Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")


plot(thedata$Global_active_power, type = "l", ylab="Global Active Power (kilowatts)", xlab="" , xaxt="n")
axis(1, at = c(0, 1440, 2880), c("Thu", "Fri", "Sat"))


plot(thedata$Voltage, type = "l", ylab="Voltage", xlab="datetime", xaxt="n")
axis(1, at = c(0, 1440, 2880), c("Thu", "Fri", "Sat"))


plot(thedata$Sub_metering_1, type = "l", ylab="Energy Submetering", xlab="",xaxt="n")
lines(thedata$Sub_metering_2, type="l", col="red")
lines(thedata$Sub_metering_3, type="l", col="blue")
axis(1, at = c(0, 1440, 2880), c("Thu", "Fri", "Sat"))
legend("topright", lwd = 2 , col=c("black", "red", "blue"),
       bty="n", cex=0.8, pt.cex = 1,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(thedata$Global_reactive_power, type = "l", ylab="global_reactive_power", xlab="datetime", xaxt="n")
axis(1, at = c(0, 1440, 2880), c("Thu", "Fri", "Sat"))


dev.off()