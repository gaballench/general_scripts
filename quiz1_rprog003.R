## Get to know where we're standing at
getwd()

## Load dataset
dataset <- read.csv("hw1_data.csv", header=T)

## 11. In the dataset provided for this Quiz, 
## what are the column names of the dataset?
colnames(dataset)

## 12. Extract the first 2 rows of the data frame and 
## print them to the console. What does the output look like?
head(dataset, 2)

## 13. How many observations (i.e. rows) are in this data frame?
dim(dataset)

## 14. Extract the last 2 rows of the data frame and print them to 
## the console. What does the output look like?
tail(dataset, 2)

## 15. What is the value of Ozone in the 47th row?
dataset$Ozone[47]

## 16. How many missing values are in the Ozone column of this data frame?
oz.na <- dataset$Ozone[is.na(dataset$Ozone)]
length(oz.na)


## 17. What is the mean of the Ozone column in this dataset? 
## Exclude missing values (coded as NA) from this calculation.
mean(dataset$Ozone, na.rm=T)

## 18. Extract the subset of rows of the data frame where Ozone values 
## are above 31 and Temp values are above 90. 
## What is the mean of Solar.R in this subset?
oz.temp <- dataset[which(dataset$Ozone > 31 & dataset$Temp > 90),]
mean(oz.temp$Solar.R)

## 19. What is the mean of "Temp" when "Month" is equal to 6? 
june <- dataset[which(dataset$Month == 6), ]
mean(june$Temp, na.rm=T)

## 20. What was the maximum ozone value in the month of May (i.e. Month = 5)?
may <- dataset[which(dataset$Month == 5), ]
max(may$Ozone, na.rm=T)
