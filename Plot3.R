plot3 <- function() {
  png (file="plot3.png", width=480, height=480)
  plot (date$timestamp,date$Sub_metering_1, type="l", xlab="", 
        ylab="Energy sub metering")
  lines (date$timestamp,date$Sub_metering_2,col="red")
  lines (date$timestamp,date$Sub_metering_3,col="purple")
  legend("topright", 
         c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),
         lty=c(1,1), lwd=c(1,1), col=c("black","red","purple"))
  
  dev.off()
  cat("plot3.png has been saved in", getwd())
}
plot3()