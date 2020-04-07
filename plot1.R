
data <- read.table("household_power_consumption.txt",header=TRUE,sep=';')
data$Date <- as.Date(data$Date, "%d/%m/%Y")
d <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
d <- d[complete.cases(d)]
hist(d$Global_active_power,main="GLobal Active Power", xlab="GLobal Active Power(kilowatts", col="red")
dev.copy(png,"plot1.png")
dev.off()
