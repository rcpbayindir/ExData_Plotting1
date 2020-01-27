file_path <- "./data/household_power_consumption.txt"
raw_data <- read.table(file_path, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
plot_data <-subset(raw_data, Date %in% c("1/2/2007","2/2/2007"))
 
globalActivePower <- as.numeric(plot_data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
