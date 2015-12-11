source("LoadinfData.R")

png(filename = "plot4.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white",  res = NA)

par(mfrow = c(2, 2))

with(TwoDays, {
  {
    xlab <-  ""
    ylab <- "Global Active Power"
    plot(DateTime, Global_active_power, type = "l", 
       xlab = xlab, 
       ylab = ylab)
  }
  {
  xlab <-  "datetime"
  ylab <- "Voltage"
  plot(DateTime, Voltage, type = "l", 
       xlab = xlab, 
       ylab = ylab)
  } 
  {
  xlab <-  ""
  ylab <- "Energy sub metering"
  
    plot(DateTime, Sub_metering_1, type = "n", ylab = ylab, xlab = xlab)
    points(DateTime, Sub_metering_1, type = "l")
    points(DateTime, Sub_metering_2, type = "l", col = "red")
    points(DateTime, Sub_metering_3, type = "l", col = "blue")
  legend("topright", 
         lty = c(1,1,1), 
         col = c("black", "blue", "red"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  } 
  {
  plot(DateTime, Global_reactive_power, type = "l")
  } 
}) 
dev.off()