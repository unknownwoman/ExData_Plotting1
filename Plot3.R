#  PLOT 3 


png("plot3.png", width=480, height=480)
plot (EPC$DateTime, EPC$Sub_metering_1, col = "Black", type = "l", xlab = "", ylab = "Energy Sub Metering")
lines (EPC$DateTime, EPC$Sub_metering_2, col = "Red")
lines (EPC$DateTime, EPC$Sub_metering_3, col = "Blue" )
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
box()
dev.off()