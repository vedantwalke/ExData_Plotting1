#Reading_Data
Complete_dataset <- read.csv2("household_power_consumption.txt" , stringsAsFactors=FALSE)
Complete_dataset$Date <- as.Date( ( Complete_dataset$Date) ,"%d/%m/%Y"  )

dataset <- subset( Complete_dataset , Date >= as.Date("2007-02-01") ) 
dataset <- subset( dataset , Date <= as.Date("2007-02-02") ) 

Global_active_power <- as.numeric( as.character(dataset$Global_active_power)  )

#Plotting line graph

png(filename = "plot2.png",
    width = 480, height = 480, units = "px")

par(mfrow = c(1,1))

plot( Global_active_power , type = "l" , axes = FALSE , ylab="Global Active Power (kilowatts)" ,xlab = "" )
axis(1, c( 1,1440 , 2880  ), c("Thur" , "Fri" , "Sat"  ))
axis(2)
box()

dev.off()