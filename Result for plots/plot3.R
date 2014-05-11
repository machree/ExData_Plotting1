hpcdata <- read.table(file = "household_power_consumption.txt", 
                  sep = ";", na.strings="?",
                  skip = 66637,
                  nrows = 2880)
colnames(hpcdata)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

hpcdata$Date<-strptime(paste(hpcdata$Date, hpcdata$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

plot(hpcdata$Date, hpcdata$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
 lines(hpcdata$Date,hpcdata$Sub_metering_2,col="red")
 lines(hpcdata$Date,hpcdata$Sub_metering_3,col="blue")
 legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.copy(png, file = "plot2.png")
dev.off()