source("LoadinfData.R")

png(filename = "plot1.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white",  res = NA)

main_title <- "Global Active Power"
xlab <- "Global Active Power (Kilowatts)"
hist(TwoDays$Global_active_power, col = "red", main = main_title, xlab = xlab)

dev.off()
