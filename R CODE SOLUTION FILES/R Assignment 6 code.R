# Create a list of numeric vectors
my_list <- list(a = c(1, 2, 3), b = c(4, 5, 6), c = c(7, 8, 9))
# Create a matrix
my_matrix <- matrix(1:9, nrow = 3, ncol = 3)
# Sum of rows
row_sums <- apply(my_matrix, 1, sum)
print(row_sums)
# Sum of columns
col_sums <- apply(my_matrix, 2, sum)
print(col_sums)
# Apply sum function to each element of the list
lapply_result <- lapply(my_list, sum)
print(lapply_result)
# Apply sum function to each element of the list and simplify the result
sapply_result <- sapply(my_list, sum)
print(sapply_result)

# Create a numeric vector
values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

# Create a factor that defines groups
groups <- factor(c("A", "A", "A", "B", "B", "B", "C", "C", "C"))

# Apply sum function to each group
tapply_result <- tapply(values, groups, sum)
print(tapply_result)

#QUESTION 2
install.packages("haven")
# Load the haven package
library(haven)
# Import the SPSS file
ssurvey_data <- read_sav("C:/Users/Admin/Downloads/ssurvey.sav")
# Print the imported data
print(ssurvey_data)
