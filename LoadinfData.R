df <- read.csv2("household_power_consumption.txt", 
                header = TRUE, 
                stringsAsFactors = F, 
                na.strings = "?",
                sep=";", dec=",",
                as.is= TRUE) 

df$DateTime <- strptime(paste(df$Date, df$Time), format="%d/%m/%Y %T")
df$Date <- as.Date(df$Date, format = "%d/%m/%Y") 
df$Time <- as.character(df$Time)

df[,3] <- as.numeric(df[,3])
df[,4] <- as.numeric(df[,4])
df[,5] <- as.numeric(df[,5])
df[,6] <- as.numeric(df[,6])
df[,7] <- as.numeric(df[,7])
df[,8] <- as.numeric(df[,8])
df[,9] <- as.numeric(df[,9])
TwoDays <- df[(df$Date >= "2007-02-01" & df$Date <= "2007-02-02"),]




