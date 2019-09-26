d = read.table(file="ISIIS201405291242.txt", skip = 10, header = T, sep = '\t')
file<-list.files(full.names=TRUE, pattern="ISIIS")
file<-as.character(file)

library(stringr)

date<-scan(file, what="character", skip=1, nlines=1, quiet=TRUE)
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
options("digits.secs"=3)

d$dateTime<-str_c(d$date, d$time, sep=" ")
d$dateTime<-as.POSIXct(strptime(x=d$dateTime, format="%m/%d/%y %H:%M:%S", tz='America/New_York'))
d$dateTime<-d$dateTime-time.zone.change * 3600

#list of tz dtaabase timezones

#Read Excel files

install.packages("openxlsx")
library(openxlsx)

openXL(file="import_datasets/Aurelia_SEAMAP_2012_2018_30mincell.xlsx")

d<-read.table(file="import_data")

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



