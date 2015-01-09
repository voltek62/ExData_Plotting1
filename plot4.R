
png("plot4.png", width = 480, height = 480, units = "px", bg = "white")

par(mfrow = c(2,2))


with(data, {
  

  #topleft
  plot(data_filter$Datetime, data_filter$Global_active_power,  xlab = "", ylab = "Global Active Power", type="l")
  
  #topright
  plot(data_filter$Datetime, data_filter$Voltage,  xlab = "", ylab = "Voltage", type="l")
  
  #bottomleft
  plot(data_filter$Datetime, data_filter$Sub_metering_1,  xlab = "", ylab = "Energy Sub Metering", type="l")
  lines(data_filter$Datetime, data_filter$Sub_metering_2, col = 'Red')
  lines(data_filter$Datetime, data_filter$Sub_metering_3, col = 'Blue')
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, lwd = 2)
  
  
  #bottomright  
  plot(data_filter$Datetime, data_filter$Global_reactive_power,  xlab = "", ylab = "Global Reactive Power", type="l")
  
})

dev.off()