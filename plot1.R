source("script.R")
hist(data$Global_active_power, xlab = "Global Active Power (killowats)", main = "Global Active Power", col = "red")
dev.copy(png,file="plot1.png")
dev.off()