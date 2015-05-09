par(mfrow=c(2,2))
library(data.table) #����data.table��(��ȡ�����ݵ�ʱ��ȽϿ�)
allfile<-fread("household_power_consumption.txt") #��ȡhousehold_power_consumption.txt����������
file<-subset(allfile,as.Date(allfile[,Date],format="%d/%m/%Y")>=as.Date("2007-02-01")&as.Date(allfile[,Date],format="%d/%m/%Y")<=as.Date("2007-02-02")) #��ȡ2007�����������

#ͼһ

value<-ts(file$Global_active_power) #��Global Active Powerȡʱ������
plot(value,axes=F,xlab="",ylab="Global Active Power(kilowatts)") #�����������߿��ͼ�������ͼ
box() #���ӱ߿�
axis(side=1,at=c(0,length(file$Global_active_power)/2,length(file$Global_active_power)),lab=c("Thu","Fri","Sat")) #���Ӻ����겢�����������
axis(side=2) #����������

#ͼ��

value2<-ts(file$Voltage) #��Voltageȡʱ������
plot(value2,axes=F,xlab="datetime",ylab="Voltage") #�����������߿��ͼ�������ͼ
box() #���ӱ߿�
axis(side=1,at=c(0,length(file$Voltage)/2,length(file$Voltage)),lab=c("Thu","Fri","Sat")) #���Ӻ����겢�����������
axis(side=2) #����������

#ͼ��

m1<-ts(file$Sub_metering_1) #��ȡSub_metering_1��ʱ������
m2<-ts(file$Sub_metering_2) #��ȡSub_metering_2��ʱ������
m3<-ts(file$Sub_metering_3) #��ȡSub_metering_3��ʱ������
plot(m1,axes=F,xlab="",ylab="Energy sub metering") #�����޿�ͼ����Sub_metering_1����
lines(m2,col="red") #����Sub_metering_2����
lines(m3,col="blue") #����Sub_metering_3����
box() #���ӱ߿�
axis(side=1,at=c(0,length(file$Sub_metering_1)/2,length(file$Sub_metering_1)),lab=c("Thu","Fri","Sat")) #���Ӻ����겢�����������
axis(side=2) #����������
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1,col=c("black","red","blue"),bty="n") #���ӱ�ʶ

#ͼ��

value3<-ts(file$Global_reactive_power) #��Global_reactive_powerȡʱ������
plot(value3,axes=F,xlab="datetime",ylab="Global_reactive_power") #�����������߿��ͼ�������ͼ
box() #���ӱ߿�
axis(side=1,at=c(0,length(file$Global_reactive_power)/2,length(file$Global_reactive_power)),lab=c("Thu","Fri","Sat")) #���Ӻ����겢�����������
axis(side=2) #����������