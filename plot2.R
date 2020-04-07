data <- read.table("household_power_consumption.txt",header=TRUE,sep=';')
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
data <- data[complete.cases(data),]
plot(d$Global_active_power~d$Time, ylab="GLobal Active Power(kilowatts)", xlab="")
dev.copy(png,"plot2.png")
dev.off()
