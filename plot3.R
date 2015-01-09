
# with par
# Sub_metering_1
# Sub_metering_2
# Sub_metering_3

png("plot3.png", width = 480, height = 480, units = "px", bg = "white")

with(data, {
  plot(data_filter$Datetime, data_filter$Sub_metering_1,  xlab = "", ylab = "Energy Sub Metering", type="l")
  lines(data_filter$Datetime, data_filter$Sub_metering_2, col = 'Red')
  lines(data_filter$Datetime, data_filter$Sub_metering_3, col = 'Blue')
})

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, lwd = 2)

dev.off()
