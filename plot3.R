source("LoadinfData.R")

png(filename = "plot3.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white",  res = NA)

xlab <-  ""
ylab <- "Energy sub metering"

with(TwoDays, {
  plot(DateTime, Sub_metering_1, type = "n", ylab = ylab, xlab = xlab)
  points(DateTime, Sub_metering_1, type = "l")
  points(DateTime, Sub_metering_2, type = "l", col = "red")
  points(DateTime, Sub_metering_3, type = "l", col = "blue")
  }
)
legend("topright", 
       lty = c(1,1,1), 
       col = c("black", "blue", "red"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()