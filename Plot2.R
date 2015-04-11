plot2 <- function() {
  png (file="plot2.png", width=480, height=480)
  plot (date$timestamp,df$Global_active_power, type="l", 
        xlab="", ylab="Global Active Power (kilowatts)")
  
  dev.off()
  cat ("plot2.png has been saved in", getwd())
}
plot2()