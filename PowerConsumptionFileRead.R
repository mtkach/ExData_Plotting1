## Check for file, if not in Dir, download from source

if(!file.exists("exdata-data-household_power_consumption.zip")) {
  temp <- tempfile()
  download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
  
  file <- unzip(temp)##Unzip file
  unlink(temp)
}

##Read file from specific dates (2.1.2007-2.2.2007)
power <- read.table(file, header=T, sep=";")
power$Date <- as.Date(power$Date, format="%d/%m/%Y")
date <- power[(power$Date=="2007-02-01") | (power$Date=="2007-02-02"),]

##Define Global_active_power and Global_reactive_power factor variables to numeric
df$Global_active_power <- as.numeric(as.character(df$Global_active_power))
df$Global_reactive_power <- as.numeric(as.character(df$Global_reactive_power))

##Convert Voltage factor variable to numeric
Voltage <- as.numeric(as.character(Voltage))

#Convert date time stampt to  d/m/y/h/m/s txt by using POSIXct transform function
date <- transform(date, timestamp = as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
## Get kitchen, laundry and water-heater readings..
date$Sub_metering_1 <- as.numeric(as.character(date$Sub_metering_1))
date$Sub_metering_2 <- as.numeric(as.character(date$Sub_metering_2))
date$Sub_metering_3 <- as.numeric(as.character(date$Sub_metering_3))