hpcdata <- read.table(file = "household_power_consumption.txt", 
                  sep = ";", 
                  skip = 66637,
                  nrows = 2880)
colnames(hpcdata)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
hist(hpcdata$Global_active_power,col="red",main="Global Active power",xlab="Global Active Power (killowatts)")
dev.copy(png, file = "plot1.png")
dev.off()
