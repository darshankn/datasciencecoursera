powerconsumption<-read.table("D:\\Swirl course\\exdata%2Fdata%2Fhousehold_power_consumption\\household_power_consumption.txt",sep = ";",
                             header = TRUE,stringsAsFactors = FALSE, dec = ".")
head(powerconsumption)
dim(powerconsumption)
names(powerconsumption)
powerconsumptiondate<-powerconsumption[powerconsumption$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(powerconsumptiondate$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
