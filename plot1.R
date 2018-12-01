
if (!exists("hpc_data")) {
        source('load_data.R')
}

png("plot1.png", width = 480, height = 480)

with(hpc_data, hist(as.numeric(Global_active_power), col = "red", 
                    xlab = "Global Active Power (kilowatts)",
                    main = "Global Active Power"))

dev.off() 
