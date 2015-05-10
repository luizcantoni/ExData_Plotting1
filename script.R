data <- read.csv("household_power_consumption.txt",sep = ";", na.strings = "?")
library(lubridate)
data$Date <- as.Date(data$Date,format = "%d/%m/%Y")

#Create a Datetime variable using lubridate (datetime type)
data$Datetime <- ymd_hms(paste(data$Date, data$Time))

data <- data[data$Date >= "2007-02-01" & data$Date <= "2007-02-02",]

graphics.off()