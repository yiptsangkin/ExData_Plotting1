library(data.table) #加载data.table包(读取大数据的时候比较快)
allfile<-fread("household_power_consumption.txt") #读取household_power_consumption.txt的所有数据
file<-subset(allfile,as.Date(allfile[,Date],format="%d/%m/%Y")>=as.Date("2007-02-01")&as.Date(allfile[,Date],format="%d/%m/%Y")<=as.Date("2007-02-02")) #读取2007年的所有数据
hist(as.numeric(file$Global_active_power),main="Global Active Power",xlab="Global Active Power(kilowatts)",col="red")
