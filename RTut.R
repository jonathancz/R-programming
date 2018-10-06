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

