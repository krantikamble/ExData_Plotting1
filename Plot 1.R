
Datafile <- "C:/Users/Kranti/Desktop/coursera/household_power_consumption.txt"
data <- read.table(Datafile, header = TRUE,sep=";",stringsAsFactors = FALSE,dec=".")
subsetdata <- data[data$Date %in% c("1/2/2017","2/2/2017"),]

#datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivepower <- as.numeric(subsetdata$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivepower, col="Red",main="Global Active Power",xlab="Global Active Power(kilowatts)",ylab= "Frequency")

dev.off()
