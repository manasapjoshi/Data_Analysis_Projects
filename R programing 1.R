print("Programming")
#Variable is the memory container to store values
empcode<-101
print(empcode)

salary=50000.25
print(salary)

550->bonus
print(bonus)

num=155L

print(typeof(empcode))
print(typeof(salary))
print(typeof(num))

empname<-"James Smith"
print(empname)
print(typeof(empname))

#Data Structure
age<-c(25,30,42,27,35)
print(age)
print(age[1:3])


data=c(1:10)
print(data)

odd_number=seq(1,10,2)
print(odd_number)

even_number=seq(0,10,2)
print(even_number)

#boolean Values
booldata=c(TRUE,FALSE,TRUE,TRUE,FALSE)
print(booldata)

#String Values
countryName=c("USA","INDIA",'China',"Canada")
print(countryName)

#check the type of vector
print(class(even_number))
print(class(booldata))
print(class(countryName))

#Convert string to number
empAge=c("25","26","35","37")
print(empAge)
print(class(empAge))

conAge=as.numeric(empAge)
print(conAge)
print(class(conAge))

empsalary<-c(4000,5000,6000,7000)
print(sum(empsalary))
#cat use for concatenate
cat("Total Salary is ",sum(empsalary))
cat("Maximum Salary is ",max(empsalary))
cat("Minimum Salary is ",min(empsalary))
cat("Mean/Average Saralary is ",mean(empsalary))
cat("Median is ",median(empsalary))

#Marks of students
#c use for concatenate
marks=c(70,72,80,92,65,74)
cat("Variance is ",var(marks))

cat("Range is ",range(1:10,50))

print(c(1:10))

print(range(1:30,50))

#standard deviation is square root of the variance
print(sd(marks))
cat("Standard Deviation ",sd(marks))

HistoryMarks<-c(75,72,68,65,67,73)
cat("Mean is ",mean(HistoryMarks))
cat("variance is ",var(HistoryMarks))
cat("Standard Deviation ",sd(HistoryMarks))

Mathmarks<-c(83,70,70,62,70,70)
cat("Mean is ",mean(Mathmarks))
cat("Variance is ",var(Mathmarks))
cat("Standard Deviation ",sd(Mathmarks))

#corr use to check the relationship of two variables

cat("Correlation is ",cor(HistoryMarks,Mathmarks))

#matrix creation
stock_price<-c(124,125,130,485,265,124)
stockmatrix=matrix(stock_price,ncol = 3)
stockmatrix

#transpose
stockmatrix1=matrix(stock_price,ncol = 3,byrow=TRUE)
stockmatrix1

#vectors store only one type of data
empinfo=c('E001','James',65252,256250)
empinfo
print(class(empinfo[3]))

#list store different type of data
productinfo=list('p001','computer',65000)
productinfo
print(typeof(productinfo[3]))
print(as.integer(productinfo[3])+10000)

#pass the vector to list
employee<-list(101,c('James','Anil'),500,c(50,100))
employee
print(employee[2])
print(employee[4])

# $ use to print particular values from data
product=list(name=c('Computer','Mouse'),price=c(50000,6000))
product
product$name
product$price

#we are discussing about factors
#factors is useful for categorical data
days_from_purchase<-c(10,45,50,80,10,45,80)
days_from_purchase

days_from_purchase_factor=as.factor(days_from_purchase)
days_from_purchase_factor

dataproduct=c('Rock','Classic','Rock','Book')
dataproduct

datafactor=as.factor(dataproduct)
datafactor

#creating dataframe
#dataframe show data into tabular format
age<-c(23,34,21,12,67)
names<-c('Nikita','Deepak','Dyuti','Sunil','Parag')
income<-c(100000,150000,170000,0,200000)
ownshouse<-c(T,T,T,F,F)
mydataset<-data.frame(age,names,income,ownshouse)
View(mydataset)
mydataset$names

#creating data frame from matrix
#vector
stockprice<-c(100,200,300,400,500,600)
#matrix
stock_matrix<-matrix(stockprice,ncol=2)
stock_matrix
#dataframe
df_stock_matrix=data.frame(stock_matrix)
View(df_stock_matrix)

st=data.frame(Price=c(50,60,80),Name=c('P','Q','R'))
st

cityname=data.frame(c('California','Texas','Delhi'),c(1000,2000,3000))
cityname
colnames(cityname)=c('City','Amount')
cityname

cityname1=data.frame(A=c('California','Texas','Delhi'),B=c(1000,2000,3000))
cityname1
colnames(cityname1)=c('City','Amount')
cityname1
#first method
cityname1$Amount
#second method -- this works on column index
cityname1[[2]]

EmpID<-c('E001','E002','E003','E004')
EmpName<-c('James','Geetha','Kelly','Harry')
Salary<-c(50000,60000,70000,90000)
Address<-c('California','Bengaluru','Seattle','Houston')

Empdetails<-data.frame(EmpID,EmpName,Salary,Address)
Empdetails
View(Empdetails)
#display only three names of the second index
Empdetails[1:3,2]
View(Empdetails[1:3,1])

#load external file
#getwd() function used to check system current path/location
getwd()

#setwd() used to set the location in the system
setwd("C://Users//Admin//Documents/100624")

getwd()

df=read.csv("salaries.csv")
df
View(df)

#show how many rows and columns in the data file
dim(df)

#filtering data from a data frame
filterData=df[df$Salary>100000,]
filterData

#conditional statements, if and else statements
price<-2
if(price>5){
  print("Sell the stock")
}else{
  print("Do not sell the stock")
}

price<-5
if(price>2){
  print("Sell the stock")
}else{
  print("Buy the stock")
}

marks=35
if(marks>60 && marks<=100)
{
  print("First Division")
}else if(marks>=45 && marks<60){
  print("Second Division")
}else if(marks>=33 && marks<45){
  print("Third Division")
}else{
  print("Fail")
}

getwd()

#setwd() used to set the location in the system
setwd("C:/Users/Admin/Documents/101224")

getwd()

df=read.csv("salaries.csv")
df
View(df)

df$SalaryL2=ifelse(df$Salary>100000,"Good","Average")
df

#iterating in a loop
for(x in 1:10){
  print(x^2)
}

for(x in 1:10){
  cat(x,"=",x^2,"\n")
}

# show built-in dataset
data()
data(mtcars)
View(mtcars)
View(airquality)

names(mtcars)
for(a in names(mtcars)){
  print(a)
}
#print 3 column and 2 row
head(mtcars[1:3],2)

for(i in 1:3){
  print(i*3)
}

#while loop
price=12.99
while(price<15){
  print(price)
  price=price+1
}
#define functions
check_price<-function(x){
  if(x>1000){
    print("Good Sale")
  }else{
    print("Average Sale")
  }
}
#call the function
check_price(200)
check_price(2000)

#apply function-performs quick operation
stockprice <-c(10,5,20,15,12,22)
matrix_form<-matrix(stockprice,ncol=2,byrow=TRUE)
matrix_form
rowtotal<-apply(matrix_form,1,sum)
rowtotal
columntotal<-apply(matrix_form,2,sum)
columntotal

#lapply function==l stands for list.Output is a list
num_list<-c(1,2,3,4,5)
lapply(num_list, function(x) x^3)

#sapply, output is a vector
num_list1<-c(1,2,3,4,5)
sapply(num_list1, function(x) x^3)

#creating data type object - initial date starting from 1970-01-01
purchased_on<-365
class(purchased_on)<-"Date"
purchased_on

#create data type object with as.Date or existing date
mydate<-as.Date(365,origin=as.Date("2024-10-13"))
mydate

#date formatting--extracting the date
todaysdate="13oct2024"
as.Date(todaysdate,format("%d%B%Y"))

#shifting the date format
now=Sys.Date()
now
format(now,format("%d%B%Y"))
format(now,format("%d%b%Y"))
format(now,format("%b%d%Y"))
format(now,format("%m%d%Y"))

#show built in data and visualize them
data()
View(Orange)
View(cars)

employeeSal<-c(40000,50000,600000,70000,650000)
Dept<-c('IT Dept','Health Dept','Sales Dept','Marketing Dept','AI-MLDept')
barplot(employeeSal,names.arg=Dept,col="red")

#piechart
colors=c("red","green","blue","purple","pink")
pie(employeeSal,label=Dept,col=colors)

y=Orange$circumference
x=Orange$age
barplot(y,names.arg=x,col="green")
barplot(y,names.arg=x,col="blue",horiz=TRUE)


