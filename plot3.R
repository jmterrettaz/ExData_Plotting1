
if (!exists("hpc_data")) {
        source('load_data.R')
}

png("plot3.png", width = 480, height = 480)

with(hpc_data, plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
with(hpc_data, lines(datetime, Sub_metering_2, type = "l", col = "red"))
with(hpc_data, lines(datetime, Sub_metering_3, type = "l", col = "blue"))
legend("topright", xjust=1, lty=1, y.intersp = 0.8, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col= c("black", "red", "blue"))

dev.off()
