library(data.table) #加载data.table包(读取大数据的时候比较快)
allfile<-fread("household_power_consumption.txt") #读取household_power_consumption.txt的所有数据
file<-subset(allfile,as.Date(allfile[,Date],format="%d/%m/%Y")>=as.Date("2007-02-01")&as.Date(allfile[,Date],format="%d/%m/%Y")<=as.Date("2007-02-02")) #读取2007年的所有数据
value<-ts(file$Global_active_power) #将Global Active Power取时间序列
plot(value,axes=F,xlab="",ylab="Global Active Power(kilowatts)") #画出不包含边框的图和坐标的图
box() #添加边框
axis(side=1,at=c(0,length(file$Global_active_power)/2,length(file$Global_active_power)),lab=c("Thu","Fri","Sat")) #添加横坐标并标出星期区间
axis(side=2) #添加纵坐标