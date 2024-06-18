#QUESTION 1
# Create a vector with a sequence from 1 to 20
vector <- 1:20

# Print values between 5 and 15
print(vector[vector >= 5 & vector <= 15])

#QUESTION 2
# Create two 2x3 matrices
matrix1 <- matrix(c(1, 2, 3, 4, 5, 6), nrow=2, ncol=3)
matrix2 <- matrix(c(6, 5, 4, 3, 2, 1), nrow=2, ncol=3)

# Print the matrices
cat("Matrix 1:\n")
print(matrix1)
cat("\nMatrix 2:\n")
print(matrix2)

# Add the matrices
add_matrix <- matrix1 + matrix2
cat("\nAddition of the matrices:\n")
print(add_matrix)

# Subtract the matrices
subtract_matrix <- matrix1 - matrix2
cat("\nSubtraction of the matrices:\n")
print(subtract_matrix)

# Multiply the matrices element-wise
multiply_matrix <- matrix1 * matrix2
cat("\nElement-wise multiplication of the matrices:\n")
print(multiply_matrix)

# Divide the matrices element-wise
divide_matrix <- matrix1 / matrix2
cat("\nElement-wise division of the matrices:\n")
print(divide_matrix)


#QUESTION 3
# Create two vectors
vector1 <- c(1, 2, 3, 4, 5)
vector2 <- c("A", "B", "C", "D", "E")

# Create a data frame from the vectors
data_frame <- data.frame(Numeric = vector1, Alphabet = vector2)

# Print the data frame
print(data_frame)

