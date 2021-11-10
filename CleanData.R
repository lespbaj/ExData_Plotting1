

clean_data <- function () {
  library(dplyr)
  library(lubridate)
  file  <- "household_power_consumption.txt"
  data <- read.delim(file, header = TRUE, sep = ";", nrows=10)
  dataclass  <- sapply(data, class)
  
  
  
  
  data <- read.delim(file, header = TRUE, sep = ";", colClasses = dataclass, na.strings = "?")
  data  <- mutate(data, DateT= paste(Date, Time))
  data  <-data %>% mutate( DateTime= paste(Date, Time)) %>% select(DateTime,3:9)
  data$DateTime   <- dmy_hms(data$DateTime )
  
  clean_data    <- data[year(data$DateTime)==2007 & month(data$DateTime)==2 & (day(data$DateTime)==1|day(data$DateTime)==2), ]
  
  
}