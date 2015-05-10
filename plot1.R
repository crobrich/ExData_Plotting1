
## This program takes the electric power consumption dataset provided 
## (household_power_consumption.txt) and makes a histogram plot as required
## for this assignment

png(file="plot1.png")
data1<-read.table(file="household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",skip=66240,nrows=5760)
header <- read.table("household_power_consumption.txt", nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)
colnames(data1)<-unlist(header)
data5 <- data1[data1$Date == "1/2/2007" | data1$Date=="2/2/2007", ]
hist(data5$Global_active_power, main="Global Active Power", xlab= "Global Active Power (kilowatts)",col="orangered")
dev.off()

