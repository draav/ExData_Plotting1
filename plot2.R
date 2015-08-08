#create line graph plot based on Global Active Power
plot2 <- function()
{
        source("readData.R")
        d <- readData()
        
        png("plot2.png")
        plot(d$Date_time,d$Global_active_power, type = "l", xlab = "", ylab = "Global ACtive Power (kilowatts)")
        dev.off()
}