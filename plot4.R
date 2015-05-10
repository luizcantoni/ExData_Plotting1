source("script.R")
library(lubridate)

graphics.off()
png("plot4.png")
par(mfcol = c(2,2))
par(mar = c(4,4,2,2))

#Frist Graph
plot(data$Datetime, data$Global_active_power,type="l",ylab="Global Active Power (kilowats)",xlab="")

#Second Graph
plot(data$Datetime, data$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="") 
lines(data$Datetime,data$Sub_metering_2,col="red")
lines(data$Datetime,data$Sub_metering_3,col="blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lwd=2, bty="n", cex = 0.8)

#Third Graph
plot(data$Datetime, data$Voltage,type="l",ylab="Voltage",xlab="datetime")

#Fourth Graph
plot(data$Datetime, data$Global_reactive_power,type="l",xlab="datetime")

#dev.copy(png,file="plot4.png")
dev.off()