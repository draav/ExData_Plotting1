#create bar graph plot based on Global Active Power
plot1 <- function()
{
        source("readData.R")
        d <- readData()
        
        png("plot1.png")
        hist(d$Global_active_power,main="Global Active Power",xlab = "Global Active Power (kilowatts)")
        dev.off()
}