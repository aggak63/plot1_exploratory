## Given data has dates, times, and missing value as ?, and file is in txt format with header, 
## values separated by ;.
## Read file in read.table to take care of above given structure of data

x<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, quote= "", 
              strip.white=TRUE, stringsAsFactors = F, na.strings = "?")
## assignment is for only two dates, thus subset the two date data

x<- subset(x, (x$Date == "1/2/2007" | x$Date== "2/2/2007")) 

## plot1 requires saving file in png of given dimension and is simple histogram
png("plot1.png", width=480, height= 480)

hist(x$Global_active_power, col= "red", xlab= "Global Active Power (kilowatts)", 
     ylab= "Frequency", 
     main= "Global Active Power")
dev.off() 


