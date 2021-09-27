data <- read.table(file = "household_power_consumption.txt", header = TRUE,sep = ";")
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


library(ggplot2)

data2$Global_active_power<- as.numeric(data2$Global_active_power)

hist(data2$Global_active_power,col="red",main="Global Active Power",xlab = "Global Active Power (in Kilowatts)")
plot(datetime, data2$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

plot(datetime, data2$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
 lines(datetime, data2$Sub_metering_2, type="l", col="red")
 lines(datetime, data2$Sub_metering_3, type="l", col="blue")
 legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
 
 
 par(mfrow = c(2, 2)) 
  plot(datetime, data2$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  plot(datetime, data2$Voltage, type="l", xlab="datetime", ylab="Voltage")
  plot(datetime, data2$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
  lines(datetime, data2$Sub_metering_2, type="l", col="red")
  lines(datetime, data2$Sub_metering_3, type="l", col="blue")
  
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
  
  
  plot(datetime, data2$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power", cex=0.2)