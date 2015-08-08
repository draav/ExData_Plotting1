#create 4 plots in one image
plot4 <- function()
{
        source("readData.R")
        d <- readData()
        
        png("plot4.png")
        par(mfrow=c(2,2)) #creates matrix to fill in with plots
        #uppper left
        plot(d$Date_time,d$Global_active_power, type = "l", xlab = "", ylab = "Global ACtive Power (kilowatts)")
        #upper right
        plot(d$Date_time,d$Voltage, type = "l", xlab = "", ylab = "Voltage")
        #bottom left
        plot(d$Date_time,d$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
        lines(d$Date_time, d$Sub_metering_2, type = "l", col = "red")
        lines(d$Date_time, d$Sub_metering_3, type = "l", col = "blue")
        legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))
        #bottom right
        plot(d$Date_time,d$Global_reactive_power, type = "l", xlab = "", ylab = "Global Reactive Power")
        
        dev.off()
}