Plot_3  <- function (data) {
  png("plot3.png", width=480, height = 480 )
  with(data, plot(DateTime, Sub_metering_1, type = "n", ylab = "Energy Sub Metering"))
  with(data, points(DateTime, Sub_metering_1, type = "l", col="black"))
  with(data, points(DateTime, Sub_metering_2, type = "l", col="red"))
  with(data, points(DateTime, Sub_metering_3, type = "l", col="blue"))
  legend("topright", legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red","blue"), lty = 1)  
  dev.off()
}