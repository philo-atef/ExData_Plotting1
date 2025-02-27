data <- read.table(file = "household_power_consumption.txt", header = TRUE,sep = ";")
data2 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

png("plot2.png", width=480, height=480)

data2$Global_active_power<- as.numeric(data2$Global_active_power)


plot(datetime, data2$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()