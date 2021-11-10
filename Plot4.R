Plot_4  <- function (data) {
  png("plot4.png", width=480, height = 480 )
  par(mfrow = c(2,2))
  
  with(data, plot(DateTime,Global_active_power , type="l", xlab = "", ylab = "Global Active Power (kilowatts)"))
  with(data, plot(DateTime, Voltage, type="l", ylab= "Voltage"))
  
  with(data, plot(DateTime, Sub_metering_1, type = "n", ylab = "Energy Sub Metering"))
  with(data, points(DateTime, Sub_metering_1, type = "l", col="black"))
  with(data, points(DateTime, Sub_metering_2, type = "l", col="red"))
  with(data, points(DateTime, Sub_metering_3, type = "l", col="blue"))
  legend("topright", legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red","blue"), lty = 1, lwd= 0)  
  with(data, plot(DateTime, Global_reactive_power, type= "l"))
  dev.off()
}