#Plot 4
png(file="plot4.png",width=480,height=480)
par(mfrow=c(2,2))

plot(data$DateTime,data$Global_active_power, type="l", xlab="",ylab="Global Active Power")

plot(data$DateTime, data$Voltage, type="l", xlab="datetime",ylab="Voltage")

plot(data$Date_Time, data$Sub_metering_1, type="l", xlab="",ylab="Energy sub metering")
lines(data$Date_Time, data$Sub_metering_2,col="red")
lines(data$DateTime, data$Sub_metering_3,col="blue")
legend("topright",lty=1,col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(data$DateTime, data$Global_reactive_power, type="l", xlab="datetime",ylab="Global_reactive_power")

dev.off()