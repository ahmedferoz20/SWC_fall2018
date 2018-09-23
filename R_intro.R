print("WOW")
#Building blocks of R

#Variable/objects
#operator <-

name <- "Jane"
print(name)
price <- 3.99
price

#list of objects
ls()
#remove objects
rm(price)
rm(list=ls())


#Functions
mass <- 64 #variable mass
mass
sqrt(64)

sqrt(mass) #function with variable as an argument
res <- sqrt(mass)
res
#getwd()function
getwd()
#using the help tab
?plot
help("mean")

#******challenge 2.1****
Challenege 2.1
mass <- 47.5
age <-122
height <- 150

mass <- mass *2.3
age <- age -20
height <- height + 20

#additional packages
install.packages("knitr")
library(knitr)
####Data types and Data Structures

#Single-element data structures: smallest units in R

age <- 45
#useful functionsto know more about the object
length(age)
str(age)

score <- 79
is.integer(score)
typeof(score)
#nested function
typeof(is.integer(score))
####Challenge 2.2####

score <- 79
find the output of

is.logical(is.numeric(typeof(is.integer(score))))
# 2minutes :)

step1 <- is.integer(score)
step1                  
step2 <- typeof(step1)
step2
step3 <- is.numeric(step2)
step3
step4 <- is.logical(step3)
step4
#Data Structure with multiple elements

#vector:collection of elements of the same data type
#how to create a vector
#c(): concatantate function
v <- c(1,2,3,45)
v <- c(1:3, 45)
  
v <- c("n:z")

#examine the object
length(v)

str(v)
#view parts of data/vector
head(v, n=2)
tail (v, n=3)

#manupulate
v1 <- 2*v
v1


#add a vector
#let's create v2 and then add v2 to v1
v2 <- c(1:5)
v2

v3 <- v1+v2
v3

#character vector
v4 <- c("jane", "john", "Farah")

typeof(v4)

#change data type
v3 <- as.character(v3)
v3
typeof(v3)
str(v3)
#Matices, factors, list*** challenge
#Matrices: 2D vectors
#to create matrices we use the matrix function
m <- matrix(c(1:18), 3,6)
m
dim(m)

#factor
#special vectors used to represent categorical data
#to create a factor we use a factor function
continent <- factor(c("Asia", "America", "Europe"))
continet
str(continent)
#Lists: generic vectors- collection of elements
#with different data types- numerical and char
l <- list("Afghanistan", "Albania", 1952, 876897)
l
typeof(l)
str(l)
######Challenge2.3#####

#Task: Try to create a list names 'myorder'
#that contains the following data structures as
#list elements:

#Elements 1 is a character vector of length 4
#that lists the menu items you ordered from the restaurant:
#chicken, soup, salad, tea.

#Element 2 is a factor that describes the types of menu items
#as "liquid" or "solid" categories.

#Element 3 is a vector that record the cost of eah menu item:
#4.99, 2.99, 3.29, 1.89
#Lists: generic vectors- collection of elements

#List <- factor(c)

#l <- ("chicken", "soup", "salad", "tea")
#Data frame
myorder <- list(items,types,cost)

myorder.df <- data.frame(items, types, cost)
menuitems <- c("chicken", "soup", "salad", "tea")
menutypes <- factor(c("solid", "liquid", "solid", "liquid"))
menucost <- c(4.99,2.99,3.29,1.89)
myorder_df <- data.frame(menuitems,menutypes,menucost)
myorder_df

## SUBSETTING
###Type 1: Positional Index:

v <-  c(1:10)
v[2]
v[c(3:6)]
v[-c(3:6)]
myorder_df[1]
myorder_df[[1]]
typeof(myorder_df[1])
typeof(myorder_df[[1]])
str(myorder_df)

## data_frame[row,column]
myorder_df[1:3]
## Subset by Name: 

myorder_df$menuitems
myorder_df$menuitems  
## SUbset by logical vectors:

#### 

# > - greater than
# <- less than
# == - equal to
# >= - greater than or equal to
# <= less than or equal to

v <- c(5,1,3,4,5)
v[v==5]

v==5
df1 <- myorder_df[myorder_df$menutypes=="solid",]
df1


df2 <- myorder_df[myorder_df$menucost>3,]
df2

df3 <- myorder_df[myorder_df$menutype=="solid"]
df3
df3
## Gapminder Dataset

myData <- read.table("Data/gapminder.txt")

## For csv files use read.csv()
str(myData)
typeof(myData$V2)
v2
myData[1,c(3,5)]
unique(myData[1,1])
unique(myData$V1)
myData[1,1]
myData[(1,1)]

str(myData)
#3. myData[,c(3,5)]
#4. unique(myData$V1)
#5. myData[myData$lifeExp<70]
#6. myData$PopM <- myData$pop/(10^6)

#Subset Canada Only
myData <- read.table(file = "Data/gapminder.txt", header = T)
#Save the graph
Canada <- myData[myData$country=="Canada",]
png("Canada.png") #Open.Canada.png file

#plot
plot(Canada$year,Canada$lifeExp, col="blue", type="l")


dev.off()


#added comment for git, just and examples