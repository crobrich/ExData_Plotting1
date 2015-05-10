
## This program takes the electric power consumption dataset provided 
## (household_power_consumption.txt) and makes a plot of Global Active Power as a function of weekday
## as required for this assignment

png(file="plot2.png")
data1<-read.table(file="household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",skip=66240,nrows=5760)
header <- read.table("household_power_consumption.txt", nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)
colnames(data1)<-unlist(header)
data5 <- data1[data1$Date == "1/2/2007" | data1$Date=="2/2/2007", ]

xdata<-as.numeric(1:nrow(data5))
plot(xdata, data5$Global_active_power, type="l", xaxt="n",xlab="", ylab="Global Active Power (kilowatts)")
atv<-c(0, 1440, 2880)
labelsv<-c("Thur", "Fri", "Sat")
axis(1, at=atv, labels=labelsv)

dev.off() 
 


