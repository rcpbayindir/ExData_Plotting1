
file_path <- "./data/household_power_consumption.txt"
raw_data <- read.table(file_path, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
plot_data <-subset(raw_data, Date %in% c("1/2/2007","2/2/2007"))
datetime <- strptime(paste(plot_data$Date, plot_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(plot_data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
