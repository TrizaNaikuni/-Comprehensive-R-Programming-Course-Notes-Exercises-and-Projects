# Create a vector
my_vector <- c(1, 2, 3, 4, 5)
print("Vector:")
print(my_vector)

# Create a matrix
my_matrix <- matrix(1:9, nrow = 3, ncol = 3)
print("Matrix:")
print(my_matrix)

# Create a data frame
my_data_frame <- data.frame(
  ID = c(1, 2, 3),
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 35)
)
print("Data Frame:")
print(my_data_frame)


#question 2

my_list <- list(
  vector = my_vector,
  matrix = my_matrix,
  data_frame = my_data_frame
)
print(my_list)


#Question 3
# Sort the data frame in descending order by Age
my_data_frame_sorted <- my_data_frame[order(-my_data_frame$Age), ]

# Print the sorted data frame
print("Data Frame sorted by Age in descending order:")
print(my_data_frame_sorted)
