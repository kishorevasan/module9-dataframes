# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
score.home <- c(40,10,24,31,25,26,20)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
score.away <- c(7,38,3,34,23,6,36)

# Combine your two vectors into a dataframe
scores<- data.frame(score.home,score.away)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
scores$diff <- score.home - score.away

# Create a new column "won" which is TRUE if the Seahawks won
scores$won <- scores$dif>0

# Create a vector of the opponent names corresponding to the games played
opponent.names <- c("Panthers","Packers","Rams","Cardinals","49ers","Lions","Falcons")

# Assign your dataframe rownames of their opponents
scores$oppnames <- opponent.names

# View your data frame to see how it has changed!
View(scores)
