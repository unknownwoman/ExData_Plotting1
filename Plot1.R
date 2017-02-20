# Preparing the File

rm(list=ls()) 
setwd ("C:/Users/JD-CR-MUFF/Desktop/ftfcu")
test <- "./household_power_consumption.txt"
data <- read.table(test, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
EPC <- test[test$Date %in% c("1/2/2007","2/2/2007") ,]
EPC$Date <- as.Date(EPC$Date, format = '%d/%m/%Y')
EPC$DateTime <- as.POSIXct(paste(EPC$Date, EPC$Time))
EPC$Sub_metering_1 <- as.numeric(EPC$Sub_metering_1)
EPC$Sub_metering_1 <- as.numeric(EPC$Sub_metering_1)
EPC$Sub_metering_1 <- as.numeric(EPC$Sub_metering_1)
EPC$Global_active_power <- as.numeric(EPC$Global_active_power)
EPC$Voltage <- as.numeric(EPC$Voltage)
EPC$Global_reactive_power <- as.numeric(EPC$Global_reactive_power)


# PLOT 1 

png("plot1.png", width=480, height=480)
hist(EPC$Global_active_power, col = "RED", 
     ylim = c(0, 1200),xlim = c(0,6),axes = F,
     xlab = "Global Active Power (Killowatts)", 
     main = "Global Active Power")
axis(2)
axis(1, at=seq(0,6, by=2), labels=seq(0,6, by=2))
dev.off()