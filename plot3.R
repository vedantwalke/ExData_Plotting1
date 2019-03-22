#Reading_Data
Complete_dataset <- read.csv2("household_power_consumption.txt" , stringsAsFactors=FALSE)
Complete_dataset$Date <- as.Date( ( Complete_dataset$Date) ,"%d/%m/%Y"  )

dataset <- subset( Complete_dataset , Date >= as.Date("2007-02-01") ) 
dataset <- subset( dataset , Date <= as.Date("2007-02-02") )

png(filename = "plot3.png",
    width = 480, height = 480, units = "px")

par(mfrow = c(1,1))

#Plotting line graph

plot( as.numeric(dataset$Sub_metering_1) , type = "l" , axes = FALSE , ylab="Energy sub metering" ,xlab = "" )
lines( as.numeric(dataset$Sub_metering_2) , axes = FALSE , col = "red"  )
lines( as.numeric(dataset$Sub_metering_3) , axes = FALSE , col = "blue"  )
axis(1, c( 1,1440 , 2880  ), c("Thur" , "Fri" , "Sat"  ))
axis(2)
box()
legend("topright", pch = c(NA, NA , NA), lwd = 2, col = c( "black" , "red" , "blue"), lty = c(1,1,1) ,
       legend = c("Sub_metering_1", "Sub_metering_2" , "Sub_metering_3") )

dev.off()