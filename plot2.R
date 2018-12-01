
if (!exists("hpc_data")) {
        source('load_data.R')
}

png("plot2.png", width = 480, height = 480)

with(hpc_data, plot(datetime, Global_active_power, type = "l", xlab = "",
                    ylab = "Global Active Power (kilowatts)"))

dev.off() 
