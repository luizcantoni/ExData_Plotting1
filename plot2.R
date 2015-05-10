source("script.R")
plot(data$Datetime, data$Global_active_power,type="l",ylab="Global Active Power (kilowats)",xlab="")
dev.copy(png,file="plot2.png")
dev.off()