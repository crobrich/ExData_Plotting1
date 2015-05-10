
## This program takes the electric power consumption dataset provided 
## (household_power_consumption.txt) and makes a multi-plot as required
## for this assignment

png(file="plot4.png")
data1<-read.table(file="household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",skip=66240,nrows=5760)
header <- read.table("household_power_consumption.txt", nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)
colnames(data1)<-unlist(header)
data5 <- data1[data1$Date == "1/2/2007" | data1$Date=="2/2/2007", ]


par(mfcol=c(2,2))

xdata<-as.numeric(1:nrow(data5))
plot(xdata, data5$Global_active_power, type="l", xaxt="n", xlab="", ylab="Global Active Power")
atv<-c(0, 1440, 2880)
labelsv<-c("Thur", "Fri", "Sat")
axis(1, at=atv, labels=labelsv)

xdata<-as.numeric(1:nrow(data5))
plot(xdata, data5$Sub_metering_1, type="l", xaxt="n", xlab="", ylab="Energy sub metering")
lines(xdata, data5$Sub_metering_2, col="orangered")
lines(xdata, data5$Sub_metering_3, col="blue")
atv<-c(0, 1440, 2880)
labelsv<-c("Thur", "Fri", "Sat")
axis(1, at=atv, labels=labelsv)
legend("topright", lty=1, bty="n", col=c("black", "orangered", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

xdata<-as.numeric(1:nrow(data5))
plot(xdata, data5$Voltage, type="l", xaxt="n", xlab="datetime", ylab="Voltage")
atv<-c(0, 1440, 2880)
labelsv<-c("Thur", "Fri", "Sat")
axis(1, at=atv, labels=labelsv)

xdata<-as.numeric(1:nrow(data5))
plot(xdata, data5$Global_reactive_power, type="l", xaxt="n", xlab="datetime", ylab="Global_reactive_power")
atv<-c(0, 1440, 2880)
labelsv<-c("Thur", "Fri", "Sat")
axis(1, at=atv, labels=labelsv) 

dev.off()  
