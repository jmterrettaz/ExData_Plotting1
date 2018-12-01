
if (!exists("hpc_data")) {
        source('load_data.R')
}

png("plot4.png", width = 480, height = 480)

par(mfcol = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))

with(hpc_data, {
     plot(datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
     with(hpc_data, plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
     with(hpc_data, lines(datetime, Sub_metering_2, type = "l", col = "red"))
     with(hpc_data, lines(datetime, Sub_metering_3, type = "l", col = "blue"))
     legend("topright", xjust=1, lty=1, y.intersp = 0.8, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col= c("black", "red", "blue"))
     plot(datetime, Voltage, type = "l")
     plot(datetime, Global_reactive_power, type = "l")
     
})

dev.off()
