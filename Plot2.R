# PLOT 2 

png("plot2.png", width=480, height=480)
plot(EPC$DateTime, EPC$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
dev.off()