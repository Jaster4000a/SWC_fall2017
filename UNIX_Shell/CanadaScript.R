# This is Life Ecpectancy across years script#
myDataFull <- read.table("../Data/gapminder.txt",header=TRUE)
Canada <-  myDataFull[myDataFull$country=="Canada",]

# plot Life Expectancy over the years
plot(Canada$year,Canada$lifeExp,col="blue",type="l") #syntax is X,Y 
      #color and other options are optional... type="l" makes the graph linear instead of scatterplot

# save Data
png("Canada.png")
plot(Canada$year,Canada$lifeExp,col="blue",type="l")
dev.off()
#Close off the device
