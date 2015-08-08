readData <- function()
{
        t <- read.table("../household_power_consumption.txt",header = TRUE,sep = ";")
        
        #subset to only select two days of data
        t <- t[t$Date=="2/2/2007"|t$Date=="1/2/2007", ]
        
        #combine date and time into one formatted column
        t$Time <- strptime(paste(t$Date,t$Time), format = "%d/%m/%Y %H:%M:%S")
        t$Date <- NULL
        names(t)[names(t)=="Time"] <- "Date_time"
        
        #convert all other columns to numberic
        i <- sapply(t, is.factor)
        t[i] <- lapply(t[i], as.character)
        t[i] <- lapply(t[i], as.numeric)
        
        t
}