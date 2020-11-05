# Unzip the downloaded file containing the data for the exercise
unzip(zipfile = "C:\\Users\\Administrator\\Downloads\\exdata_data_household_power_consumption.zip",exdir = getwd())

#read the .txt file with the function read.table and assigning names to the columns in the file
power<-read.table("household_power_consumption.txt",skip=1,sep = ';')
names(power)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#subset the initial dataset to only select the data corresponding to the period 1/2/2007 to 2/2/2007
subpower<-subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#plot the Global_active_power variable and create the corresponding .png file 
png("plot1.png", width=480, height=480)
hist(as.numeric(as.character(subpower$Global_active_power)),main="Global Active Power",col= "Red",xlab = "Global Active Power (kilowatts)",ylab = "Frequency")
dev.off()
