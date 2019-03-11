#reading the data
power <- read.table("household_power_consumption.txt",header = TRUE,sep=";")
#subsetting the data
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#creating the png file
png("Plot1.png", width = 480, height = 480)
#calling the basic plot function
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()
