data <- read.table(file = "household_power_consumption.txt", header = TRUE,sep = ";")
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

png("plot3.png", width=480, height=480)

data2$Global_active_power<- as.numeric(data2$Global_active_power)



plot(datetime, data2$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, data2$Sub_metering_2, type="l", col="red")
lines(datetime, data2$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))


dev.off()