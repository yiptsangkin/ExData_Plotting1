library(data.table) #����data.table��(��ȡ�����ݵ�ʱ��ȽϿ�)
allfile<-fread("household_power_consumption.txt") #��ȡhousehold_power_consumption.txt����������
file<-subset(allfile,as.Date(allfile[,Date],format="%d/%m/%Y")>=as.Date("2007-02-01")&as.Date(allfile[,Date],format="%d/%m/%Y")<=as.Date("2007-02-02")) #��ȡ2007�����������
value<-ts(file$Global_active_power) #��Global Active Powerȡʱ������
plot(value,axes=F,xlab="",ylab="Global Active Power(kilowatts)") #�����������߿��ͼ�������ͼ
box() #���ӱ߿�
axis(side=1,at=c(0,length(file$Global_active_power)/2,length(file$Global_active_power)),lab=c("Thu","Fri","Sat")) #���Ӻ����겢�����������
axis(side=2) #����������