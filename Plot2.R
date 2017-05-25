powerconsumption<-read.table("D:\\Swirl course\\exdata%2Fdata%2Fhousehold_power_consumption\\household_power_consumption.txt",sep = ";",
                             header = TRUE,stringsAsFactors = FALSE, dec = ".")
head(powerconsumption)
dim(powerconsumption)
names(powerconsumption)
powerconsumptiondate<-powerconsumption[powerconsumption$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(powerconsumptiondate$Date, powerconsumptiondate$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(powerconsumptiondate$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
