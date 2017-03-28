data <- read.table("house.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
dataSub <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
dataSub$Date <- as.Date(dataSub$Date, format="%d/%m/%Y")
hist(dataSub$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")