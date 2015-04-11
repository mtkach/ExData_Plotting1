plot4 <- function() {
  png (file="plot4.png", width=480, height=480)
  par(mfrow=c(2,2))
  
  ##Plot1
  plot(date$timestamp,date$Global_active_power, type="l", xlab="", 
       ylab="Global Active Power")
  
  ##Plot2
  plot(date$timestamp,date$Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  ##Plot3
  plot(date$timestamp,date$Sub_metering_1, type="l", xlab="", 
       ylab="Energy sub metering")
  lines(date$timestamp,date$Sub_metering_2,col="red")
  lines(date$timestamp,date$Sub_metering_3,col="green")
  legend("topright", col=c("black","red","green"), 
         c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),
         lty=c(1,1), bty="n", cex=.5) 
 
  
  #Plot4
  plot(date$timestamp,date$Global_reactive_power, type="l", 
       xlab="datetime", ylab="Global_reactive_power")

  dev.off()
  cat("plot4.png has been saved in", getwd())
}
plot4()