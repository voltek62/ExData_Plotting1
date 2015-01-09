
# add column datetime

data_filter$Date <- as.Date(data_filter$Date, format="%d/%m/%Y")
data_filter$Datetime <- paste(data_filter$Date, data_filter$Time)
data_filter$Datetime <- strptime(data_filter$Datetime, format="%Y-%m-%d %H:%M:%S")

png("plot2.png", width = 480, height = 480, units = "px", bg = "white")

plot(data_filter$Datetime, data_filter$Global_active_power,  xlab = "", ylab = "Global Active Power (kilowatts)", type="l")

dev.off()