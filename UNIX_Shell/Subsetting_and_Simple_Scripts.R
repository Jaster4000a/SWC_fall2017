menuItems <- c("Chicken","Soup","Salad", "Tea") 
menuType <- factor(c("Solid","Liquid","Solid","Liquid"))
menuCost <- c(4.99, 2.99, 3.29, 1.89)
myOrder <- list(menuItems, menuType, menuCost)
length(myOrder)
str(myOrder)
myOrder
length(menuItems)
length(menuType)
length(menuCost)
#important Data frames - All elements must have equal length

myOrder_df <- data.frame(menuItems, menuType, menuCost) #Creates a data frame/table of elements (cell array)
myOrder_df

#### Subsetting By Position Index
menuItems <- c("Chicken","Soup","Salad", "Tea") 
menuType <- factor(c("Solid","Liquid","Solid","Liquid"))
menuCost <- c(4.99, 2.99, 3.29, 1.89)
myOrder <- list(menuItems, menuType, menuCost)
length(myOrder)
str(myOrder)
myOrder
length(menuItems)
length(menuType)
length(menuCost)
#important Data frames - All elements must have equal length

myOrder_df <- data.frame(menuItems, menuType, menuCost) #Creates a data frame/table of elements (cell array)
myOrder_df
v <- c(10:20)
v
v[7]
v[7:10] #all values 7 through 10
v[-c(7:10)] #all values except 7 through 10
myOrder[1]
myOrder[3]
myOrder_df
myOrder_df[3,3] #Finding values in a cell array
myOrder_df[,3] #all rows in column 3
myOrder_df[3,] #all columns in row 3
myOrder_df[3] #all rows in column 3, Shorthand, comma removed
myOrder_df$menuItems #Get values from the menuItems element

# < > == <= >=  comparison symbols
v1 <- v[v<15]
v1
df1 <- myOrder_df[myOrder_df$menuType=="Liquid",]

myOrder_df
df1
df2 <- myOrder_df[myOrder_df$menuCost<3,]
df2
myData <- read.table("../Data/gapminder.txt", header = TRUE)
myData
head(myData,5)
#read.csv("path_to_the_file") how to read a file
dim(myData)
##Challenge##
#1 what is the overall structure? What function will you use?
str(myData)
#2 can you tell the data type of the emelemtns in each column?
typeof(myData$country)
typeof(myData$continent)
typeof(myData$year)
typeof(myData$lifeExp)
typeof(myData$pop)
typeof(myData$gdpPercap)
typeof(myData)
#3 Can you extract 3rd and 5th column of the dataset?
myData35 <- myData[,c(3,5)]
myData35
#4 can you extract the list of the countries in this dataset?
myDataNames <- unique(myData[,1])
myDataNames
#5 Can you get a part of this dataset that includes information about sweden?
DataSwed <- myData[myData$country=="Sweden",]
DataSwed
#6 can you extract all countries for which life expectancy is below 70
Life70 <-  myData[myData$lifeExp<70,]
Life70
#7 Can you a new Column that contains population in units of millions of people?
myData$new <- myData$pop/10^6
head(myData,10)
