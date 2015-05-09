library(data.table) #����data.table��(��ȡ�����ݵ�ʱ��ȽϿ�)
allfile<-fread("household_power_consumption.txt") #��ȡhousehold_power_consumption.txt����������
file<-subset(allfile,as.Date(allfile[,Date],format="%d/%m/%Y")>=as.Date("2007-02-01")&as.Date(allfile[,Date],format="%d/%m/%Y")<=as.Date("2007-02-02")) #��ȡ2007�����������
hist(as.numeric(file$Global_active_power),main="Global Active Power",xlab="Global Active Power(kilowatts)",col="red")