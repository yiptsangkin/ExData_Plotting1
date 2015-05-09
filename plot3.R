library(data.table) #加载data.table包(读取大数据的时候比较快)
allfile<-fread("household_power_consumption.txt") #读取household_power_consumption.txt的所有数据
file<-subset(allfile,as.Date(allfile[,Date],format="%d/%m/%Y")>=as.Date("2007-02-01")&as.Date(allfile[,Date],format="%d/%m/%Y")<=as.Date("2007-02-02")) #读取2007年的所有数据
m1<-ts(file$Sub_metering_1) #获取Sub_metering_1的时间序列
m2<-ts(file$Sub_metering_2) #获取Sub_metering_2的时间序列
m3<-ts(file$Sub_metering_3) #获取Sub_metering_3的时间序列
plot(m1,axes=F,xlab="",ylab="Energy sub metering") #画出无框图添加Sub_metering_1曲线
lines(m2,col="red") #添加Sub_metering_2曲线
lines(m3,col="blue") #添加Sub_metering_3曲线
box() #添加边框
axis(side=1,at=c(0,length(file$Sub_metering_1)/2,length(file$Sub_metering_1)),lab=c("Thu","Fri","Sat")) #添加横坐标并标出星期区间
axis(side=2) #添加纵坐标
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1,col=c("black","red","blue")) #添加标识