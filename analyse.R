library("data.table")

# import
data = read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings='?')

# Loading data : 2007-02-01 and 2007-02-02
data_filter<-data[data$Date=='1/2/2007' | data$Date=='2/2/2007',]



