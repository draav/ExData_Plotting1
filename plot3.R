#create line graph plot, with the 3 sub metering values
plot3 <- function()
{
        source("readData.R")
        d <- readData()
        
        png("plot3.png")
        plot(d$Date_time,d$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
        lines(d$Date_time, d$Sub_metering_2, type = "l", col = "red")
        lines(d$Date_time, d$Sub_metering_3, type = "l", col = "blue")
        legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))
        dev.off()
}