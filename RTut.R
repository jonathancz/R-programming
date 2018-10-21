mlbPlayers = read.table(file=file.choose(),
                        header=T, sep=" ",
                        na.strings="`",
                        stringsAsFactors=F)

# Grab just RBIs and Avg for each player
# playerData is known as a data frame (Table of Data)
# We get the stats we want by passing that list in a vector
playerData = mlbPlayers[,c("RBI","AVG")]

# Create the file
png(file="player_rbi_avg.png")

# Create the plot
plot(x=playerData$RBI, y=playerData$AVG,
     xlab="RBI", ylab="AVG", main="RBIs and Average")

# Create the file
dev.off()''

# ----- ASSIGNMENT -----
# You can assign a value using = or <-'
myNum = 5
myNum

# ----- VARIABLES -----
# Variable names start with letter and can contain
# numbers, underscores and dots

# Most languages use data types to define how much
# space to set asside in memory
# Variables in R are assigned R objects

# Types are dynamic which means a variable names Data
# type changes based on the data assigned to it

# Here are the Vector types
# numeric
print(class(4))

# integer
print(class(4L))

# logical (TRUE, FALSE, T, F)
print(class(TRUE))

# Complex
print(class(1 + 4i))

# character
print(class("Sample"))

# raw when converted into raw bytes
print(class(charToRaw("Sample")))

# You can check an objects class with 
# is.integer(), is.numeric(), is.matrix(), is.data.frame(),
# is.logical(), is.vector(), is.character()

# You can convert to different classes with
# as.integer(), as.numeric(),...

# ----- ARITHMETIC OPERATORS -----
sprintf("4 + 5 = %d", 4 + 5)
sprintf("4 - 5 = %d", 4 - 5)
sprintf("4 * 5 = %d", 4 * 5)
sprintf("4 / 5 = %1.3f", 4 / 5)

# Modulus or remainder of division
sprintf("5 %% 4 = %d", 5 %% 4)

# Value raised to the exponent of the next
sprintf("4^2 = %d", 4^2)

# ----- VECTORS -----
# Vectors stone multiple values
# Create a Vector
numbers = c(3, 2, 0, 1, 8)
numbers
# Get value by index
numbers[1]

# Get the number of items
length(numbers)

# Get the last value
numbers[length(numbers)]

# Get everything but an index
numbers[-1]

# Get the 1st 2 values
numbers[c(1,2)]

# Get the 2nd and 3rd
numbers[2:3]

# Replace a value
numbers[5] = 1
numbers

# Replace the 4th and 5th with 2
numbers[c(4,5)] = 2
numbers

# sort values (decreasing can be TRUE or FALSE)
sort(numbers, decreasing=TRUE)

# Generate a sequence from 1 to 10
oneToTen = 1:10
oneToTen

# Sequence from 3 to 27 adding 3 each time
add3 = seq(from=3, to=27, by=3)
add3

# Create 10 evens from 2
evens = seq(from=2, by=2, length.out=10)
evens

# Find out if a value is in vector
sprintf("4 in evens %s", 4 %in% evens)

# rep() repeats a value/s x, a number of times and
# each defines how many times to repeat each item
rep(x=2, times=5, each=2)

rep(x=c(1,2,3), times=2, each=2)

# ----- RELATIONAL OPERATORS -----
iAmTrue = TRUE
iAmFasle = FALSE

sprintf("4 == 5: %s", 4 == 5)
sprintf("4 != 5: %s", 4 != 5)
sprintf("4 > 5: %s", 4 > 5)
sprintf("4 < 5: %s", 4 < 5)
sprintf("4 >= 5: %s", 4 >= 5)
sprintf("4 <= 5: %s", 4 <= 5)

# Relational operator vector tricks
oneTo20 = c(1:20)

# Create vector of Ts and Fs depending on condition
isEven = oneTo20 %% 2 == 0
isEven

# Create array of evens
justEvens = oneTo20[oneTo20 %% 2 == 0]
justEvens

# ---- LOGICAL OPERATORS ----
cat("TRUE && FALSE = ", T && F, "\n")
cat("TRUE || FALSE = ", T || F, "\n")
cat("!TRUE = ", !T, "\n")

# ---- DECISION MAKING ----
age = 18

# if, else and else if works like other languages
if(age >= 18){
	printf("Drive and Vote")
} else if (age >= 16) {
	print("Drive")
} else {
	print("Wait")
}

# ----- SWITCH -----
# Used when you have a limited set of possible values
grade = "Z"

switch(grade,
	"A" = print("Great"),
	"B" = print("Good"),
	"C" = print("Ok"),
	"D" = print("Bad"),
	"F" = print("Terrible"),
	print("No such Grade"))

# ----- STRINGS -----
str1 = "This is a string"

# You can compare strings where later letters are considered
# greater than
sprintf("Dog > Egg : %s", "Dog" > "Egg")
sprintf("Dog == Egg : %s", "Dog" == "Egg")

# Combine strings and define separator if any
str2 = paste("Owl", "Bear", sep = " ")

# Remove bear from the string
substr(x=str2, start=4, stop=7)
 
# Substitute one string with another
sub(pattern="Owl", replacement="Hawk", x=str2)
 
# Substitute all matches
gsub(pattern="Egg", replacement="Chicken", x="Egg Egg")
 
# Split string into vector
strVect = strsplit("A dog ran fast", " ")
 
strVect

# ----- FACTORS ------
# Factors are used when you have a limited number of values
# that are strings or integers
 
# Create a factor vector
direction = c("Up", "Down", "Left", "Right", "Left", "Up")
factorDir = factor(direction)
 
# Check if it's a Factor
is.factor(factorDir)
 
# A Factor object contains levels which store all possible
# values
levels(x=factorDir)
 
# You can define your levels and their orders
dow = c("Monday", "Tuesday", "Wednesday", "Thursday",
        "Friday", "Saturday", "Sunday")
 
wDays = c("Tuesday", "Thursday", "Monday")
 
wdFact = factor(x=wDays, levels=dow, ordered=T)
 
wdFact
 
# ----- DATA FRAMES -----
# A Data Frame is a table which contains any type 
# of data and an equal amount of data in each column
 
# Each row is called a record and each column a varaible
 
# Create customer data frame
custData = data.frame(name=c("Tom", "Sally", "Sue"),
                      age=c(43, 28, 35), 
                      stringsAsFactors=F)
 
custData
 
# Get data in row 1 column 1
custData[1,1]
 
# Get all data in 1st row
custData[1,1:2]
 
# Get all ages
custData[1:3, 2]
 
# Get dimensions
dim(custData)
 
# Add another record
recordMark = data.frame(name="Mark", age=33)
custData = rbind(custData, recordMark)
custData
 
# Add a column representing debt
debt = c(0, 25.50, 36, 48.19)
custData = cbind(custData, debt)
custData
 
# Check if money is owed
owesMoney = custData[custData$debt > 0,]
owesMoney
 
# ----- LOOPING -----
# Repeat until a condition is met
num = 1
repeat{
  print(num)
  num = num + 1
  if(num > 5){
    
    # Jumps out of loop
    break
  }
}
 
# Repeat while condition is true
while(num > 0){
  num = num - 1
  
  # next skips the rest of the loop and jumps
  # back to the top
  if(num %% 2 == 0){
    next
  }
  print(num)
}
 
# For can be used to cycle through a vector
# or do the same thing a specific number of times
oneTo5 = 1:5
for (i in oneTo5){
  print(i)
}


