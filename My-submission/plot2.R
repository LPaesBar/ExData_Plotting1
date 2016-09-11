plot2 = function(working_directory){
  setwd(working_directory)
  data = read.table("household_power_consumption.txt",sep = ";",skip = 66637,nrows = 2881)
  names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
  colnames(data)=names
  data$Date = as.Date(data$Date, format ="%d/%m/%Y")
  datetime <- paste(as.Date(data$Date), data$Time)
  datetime <- as.POSIXct(datetime)
  png("plot2.png",width = 480,height = 480)
  par(bg="transparent")
  plot(datetime,data[,3], type="l", ylab="Global Active Power (kilowatts)", xlab="")
  dev.off()
}
