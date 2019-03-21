#Reading_Data
Complete_dataset <- read.csv2("household_power_consumption.txt" , stringsAsFactors=FALSE)
Complete_dataset$Date <- as.Date( ( Complete_dataset$Date) ,"%d/%m/%Y"  )

dataset <- subset( Complete_dataset , Date >= as.Date("2007-02-01") ) 
dataset <- subset( dataset , Date <= as.Date("2007-02-02") ) 

Global_active_power <- as.numeric( as.character(dataset$Global_active_power)  )

par(mfrow = c(1,1))

#Plotting histogram
hist( Global_active_power , col = "red" , xlab="Global Active Power (kilowatts)", main = "Global Active Power"   )