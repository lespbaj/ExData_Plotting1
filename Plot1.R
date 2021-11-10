Plot_1  <- function (data) {
  png("plot1.png", width=480, height = 480 )
  hist(data$Global_active_power, col="red", xlab ="Global Active Power (killowatts)" , ylab = "Frequency", main ="Global Active Power")
  dev.off()
}