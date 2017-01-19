# Load R's "USPersonalExpenditure" dataset using the "data()" function
# This will produce a data frame called `USPersonalExpenditure`
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable as an argument
# to the `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable
usdata <- data.frame(USPersonalExpenditure,stringsAsFactors = FALSE)

# What are the column names of your dataframe?
colnames(usdata)
test <- colnames(usdata)
substr(test[1],2,5)


# Why are they so strange? Think about whether you could use a number like 1940
# with dollar notation!

prevnames <- substr(colnames(usdata),2,5)

colnames(usdata)<- prevnames

colnames(usdata)

# What are the row names of your dataframe?
rownames(usdata)

# Create a column "category" that is equal to your rownames
usdata$category <- rownames(usdata)

# How much money was spent on personal care in 1940?
usdata$`1940`[usdata$category=="Personal Care"]

# How much money was spent on Food and Tobacco in 1960?
usdata$`1960`[usdata$category=="Food and Tobacco"]

# What was the highest expenditure category in 1960?
# Hint: use the `max()` function to find the largest, then compare that to the column
usdata$category[usdata$`1960`==max(usdata$`1960`)]

# Define a function `DetectHighest` that takes in a year as a parameter, and
# returns the highest spending category of that year
DetectHighest<- function(year){
  stryear <- paste0(year)
  costs <- usdata[[stryear]]
  return(usdata$category[costs==max(costs)])
}

# Using your function, determine the highest spending category of each year
DetectHighest(1940)
DetectHighest(1945)
DetectHighest(1950)
DetectHighest(1955)
DetectHighest(1960)