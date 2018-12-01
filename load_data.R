
if (!file.exists("household_power_consumption.txt")) {
        print("downloading zip file...")
        download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip', 
                      destfile = "data.zip")
        print("unzip...")
        unzip("data.zip")
        print("done.")
}

print("loading data...")
hpc_data <- read.csv('household_power_consumption.txt', sep=";",na.strings = c("?"),  
                     colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

hpc_data <- subset(hpc_data, Date == "1/2/2007" | Date == "2/2/2007")
datetime <- paste(hpc_data$Date, hpc_data$Time)
hpc_data$datetime <- strptime(datetime, format = "%d/%m/%Y %H:%M:%S")
print("done.")

