plot1 = function(working_directory){
  setwd(working_directory)
  data = read.table("household_power_consumption.txt",sep = ";",skip = 66637,nrows = 2881)
  names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
  colnames(data)=names
  png("plot1.png",width = 480,height = 480)
  par(bg="transparent")
  hist(data$Global_active_power,col="red",main = "Global Active Power",xlab ="Global Active Power (kilowatts)")
  dev.off()
}
