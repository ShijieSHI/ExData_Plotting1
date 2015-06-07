#Set working directory
setwd("~/Documents/Coursera/Data Science Specialization/4 Exploratory Data Anaylsis/03 Practice")

#Read the data
data <- read.table('household_power_consumption.txt', header=TRUE, sep=';', na.strings='?', colClasses= c(rep('character', 2), rep('numeric', 7)))

#Convert Date Time variable
DateTimeFunction=function(x,y) {paste(x,y,sep=" ")}
data$DateTime = mapply(DateTimeFunction,data$Date,data$Time)
data$DateTime = as.POSIXlt(data$DateTime,format="%d/%m/%Y %H:%M:%S")
data$Date=strptime(data$Date, format="%d/%m/%Y")

#Subset data for the dates 02-01-2007 and 02-02-2007
data=subset(data,data$Date>as.POSIXlt("2007-01-31") & data$Date<as.POSIXlt("2007-02-03"))

#Plot 1
png(file="plot1.png",width=480,height=480)
hist(data$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
