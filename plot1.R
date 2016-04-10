              ##Histogram for Global Active Power##
##set working directory##
setwd("~/Data_Science/Exploratory_Data_Analaysis/Course_Assigment1")
##read data
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
##subset data for specific dates
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
##Make histogram and save as png
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()