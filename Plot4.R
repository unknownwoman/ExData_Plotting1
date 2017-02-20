#  Final plot


png("plot4.png", width=480, height=480)
par (mfrow = c(2,2))

#plot1
hist(EPC$Global_active_power, col = "RED", 
     ylim = c(0, 1200),xlim = c(0,6),axes = F,
     xlab = "Global Active Power (Killowatts)", 
     main = "Global Active Power")
axis(2)
axis(1, at=seq(0,6, by=2), labels=seq(0,6, by=2))
box()
#Plot2
plot (EPC$DateTime, EPC$Voltage, col = "Black", type = "l", xlab = "datetime", ylab = "Voltage")
box()
#Plot3
plot (EPC$DateTime, EPC$Sub_metering_1, col = "Black", type = "l", xlab = "", ylab = "Energy Sub Metering")
lines (EPC$DateTime, EPC$Sub_metering_2, col = "Red")
lines (EPC$DateTime, EPC$Sub_metering_3, col = "Blue" )
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1 ,col=c("black", "red", "blue"))
box()
#Plot4
plot (EPC$DateTime, EPC$Global_reactive_power, col = "Black", type = "l", xlab = "datetime", ylab = "lobal_reactive_power")
box()
dev.off()