source("LoadinfData.R")

png(filename = "plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white",  res = NA)

xlab <-  ""
ylab <- "Global Active Power (Kilowatts)"
plot(TwoDays$DateTime, TwoDays$Global_active_power, type = "l", 
     xlab = xlab, 
     ylab = ylab)


dev.off()