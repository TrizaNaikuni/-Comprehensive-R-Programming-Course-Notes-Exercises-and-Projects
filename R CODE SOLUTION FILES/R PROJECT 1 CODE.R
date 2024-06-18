#Question 1
# Step 1: Create vector a
a <- seq(5, 160, by = 5)

# Step 2: Create vector b
b <- seq(152, 7, by = -1)

# Step 3: Multiply vectors a and b element-wise to create d
d <- a * b

# Step 4: Identify the 19th, 20th, and 21st elements of d
elements_19_21 <- d[19:21]

# Print the result
elements_19_21

#Question 1b
#Identify elements of d which are less than 2000
elements_less_than_2000 <- d[d < 2000]

# Print the result
elements_less_than_2000

#Question 1c
#Identify elements of d which are greater than 6000
elements_greater_than_6000 <- d[d > 6000]

#  Count the number of elements greater than 6000
num_elements_greater_than_6000 <- length(elements_greater_than_6000)

# Print the result
num_elements_greater_than_6000


#QUESTION 2
# Create a vector with your friends' names
friends <- c("Humphrey", "Mugambi", "Alice", "Bob", "Charlie")

# Method 1: Using sort() function
sorted_friends1 <- sort(friends)

# Method 2: Using order() function
sorted_friends2 <- friends[order(friends)]

# Print the results
sorted_friends1
sorted_friends2

#Question 3
# Create three vectors x, y, and z with integers
x <- c(1, 2, 3)
y <- c(4, 5, 6)
z <- c(7, 8, 9)

# Combine the vectors to form a 3x3 matrix A
A <- cbind(x, y, z)

# Print the matrix A
A

#QUESTION 4
# Create three random normal vectors of length 100
set.seed(123) # Setting seed for reproducibility
x1 <- rnorm(100)
x2 <- rnorm(100)
x3 <- rnorm(100)

# Combine the vectors into a data frame with three columns
t <- data.frame(x1, x2, x3)

# Print the data frame to check
print(head(t)) # Display the first few rows of the data frame

#QUESTION 5
# Install package
 install.packages("vcd")
  library(vcd)
# Load the arthritis data frame
data("Arthritis")
# Get the summary of the arthritis data frame
summary(Arthritis)
# Get the top 6 rows of the arthritis data frame
head(Arthritis)

