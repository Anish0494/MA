
library(gsheet)
url2='https://docs.google.com/spreadsheets
        /d/1PWWoMqE5o3ChwJbpexeeYkW6p4BHL9hubVb1fkKSBgA/edit#gid=216113907'
denco2=as.data.frame(gsheet2tbl(url2))
str(denco2)

head(denco2,n=7)
names(denco2)

sales=denco2 # keeping a backup
str(sales)
sales$custname = factor(sales$custname)
sales$region = factor(sales$region)
sales$partnum = factor(sales$partnum)
str(sales)
summary(sales)

dim(sales)
unique(sales$custname)  #how many unique customer
length(unique(sales$custname)) #number of customer which have bought
length(unique(sales$region))  

#WHEN WE WANT TO FIND THE TABLE BETWEEN 2 FACTORS
aggregate(sales$revenue, by=list(sales$custname),FUN=max)
#which customer gave me more revenue
df1=aggregate(sales$revenue, by=list(sales$custname),FUN=sum)          
df1

