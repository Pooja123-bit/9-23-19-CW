getwd()
setwd("C:/Users/pooja/OneDrive/Desktop/R/9-23-19-CW")

list.files(pattern="txt")
OR
list.files(pattern=".txt")

list.files()

d = read.table(file='ISIIS201405291242.txt', sep="\t", skip = 10, header = T, 
stringsAsFactors=FALSE, quote="\"",check.names=FALSE,
na.strings="9999.99")

d = read.table(file='ISIIS201405291242.txt', sep="\t", skip = 10, header = T,
               fileEncoding = "ISO-8859-1", encoding = "UTF-8", 
               stringsAsFactors=FALSE, quote="\"",check.names=FALSE,
               na.strings="9999.99")

names(d)
head(d)



file<-list.files(full.names=TRUE, pattern="ISIIS")
file<-as.character(file)

library(stringr)

date<-scan(file="ISIIS201405291242.txt", what="character", 
           skip=1, nlines=1, quiet=TRUE)
date<-date[2]

mm<-str_sub(string=date, start=1, end=2)
dd<-str_sub(string=date, start=4, end=5)
dd<-as.numeric(dd)
yy<-str_sub(string=date, start=7, end=8)
dateNextDay<-str_c(mm,as.character(dd:1),yy,sep="/")

date<-str_c(mm,dd,yy, sep="/")

d$hour<- as.numeric(str_sub(string=d$Time,start=1, end=2))
d$min<- as.numeric(str_sub(string=d$Time,start=4, end=5))
d$secs<- as.numeric(str_sub(string=d$Time,start=-5, end=-1))
d$time<-str_c(d$hour,d$min,d$secs,sep = ":")

d$date<-date
head(d$dateTime)
options("digits.secs"=3)

d$dateTime<-str_c(d$date, d$time, sep=" ")

d$dateTime<-as.POSIXct(strptime(x=d$dateTime, 
format="%m/%d/%y %H:%M:%S",tz="America/New_York"))

#to be able to alter timezone back to the one to initial
d$dateTime<-d$dateTime-time.zone.change*3600

d$changetime<-format(d$dateTime, tz<- 'America/Los_Angeles')

#list of tz database timezones

#Read Excel files

install.packages("openxlsx")
library(openxlsx)
getwd()
setwd("C:/Users/pooja/OneDrive/Desktop/R/9-23-19-CW")
list.files()

load(file="aurelia_15minCell_statareas.Rdata")

#Installing packages for text, csv and excel file
install.packages("data.table")
library(data.table)
library(tidyverse)
library(readxl)


e<-read_excel(path="Aurelia_SEAMAP_2012-2018_30minCell.xlsx")

read_xlsx(path="Aurelia_SEAMAP_2012-2018_30minCell.xlsx")


9-25-2019

load(file<-"aurelia_15minCell_statareas.Rdata")
load("aurelia_15minCell_statareas.Rdata")
d<-load("aurelia_15minCell_statareas.Rdata")

library(data.table)
K<-fread(input="aurelia_15minCell_statareas.txt", sep=",",
header=T,stringsAsFactors=F)

head(d1)

d2<-read.csv(file="import_datasets/aurelia_15minCell_statareas.txt",
             header)
d3<-read.table(file="aurelia_15minCell_statareas.txt",
               sep=",",header=T,stringsAsFactors=F)
head(d3)
library(tidyverse)
d4<- read_csv(file="ENVREC.csv")
head(d4)

#Excelfile
library(reads1)
s<-read_xlsx(path="Aurelia_SEAMAP_2012-2018_30minCell.xlsx")
s1

#tapply
a=tapply=d$H, INDEX=list(df$(tea,ID), FUN=sum)
a.df=as.data.frame(a)
a.f$ID=row.names(a)

a2.df=data.frame(tid=row.names(a),mean=as.numeric(a))

b=df %-% group_by(teamID) %-% summarise(totalHits=sum(H))

c=aggregate(s=df$H, by= list(df$teamID, FUN=sum))

#merge---
q= data.frame(id=c('a','b','c','d'),num=c(1,2,3,4))
v= data.frame(id=c('a','b','e'),car=c(6,7,8))

qv=merge(x=q,y=v,by='id')
qv

#Include all values of x
qv=merge(x=q,y=v,by='id', all.x=T) 

#Include all values of y
qv=merge(x=q,y=v,by='id', all.y=T)





