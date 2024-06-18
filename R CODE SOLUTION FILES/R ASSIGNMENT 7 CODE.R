#QUESTION 1
# Load necessary library
library(dplyr)
# Create a data frame with missing values (NA)
data <- data.frame(
  ID = 1:10,
  Name = c("John", "Paul", "George", "Ringo", NA, "Mick", "Keith", "Charlie", "Ronnie", NA),
  Age = c(34, 28, 45, NA, 40, 55, NA, 39, 42, 48),
  Score = c(85, NA, 78, 90, 88, NA, 76, 82, 84, 79)
)
# Display the data frame
print(data)

#QUESTION 2
# Exclude NA values using na.omit
data_no_na <- na.omit(data)

# Display the dataframe without NAs
print("Dataframe with NAs omitted:")
print(data_no_na)

# Calculate means and sums excluding NA values using na.rm parameter
mean_age <- mean(data$Age, na.rm = TRUE)
sum_age <- sum(data$Age, na.rm = TRUE)

mean_score <- mean(data$Score, na.rm = TRUE)
sum_score <- sum(data$Score, na.rm = TRUE)

# Print the results
print(paste("Mean Age (NA removed):", mean_age))
print(paste("Sum Age (NA removed):", sum_age))

print(paste("Mean Score (NA removed):", mean_score))
print(paste("Sum Score (NA removed):", sum_score))

#QUESTION 3
# Load necessary library
library(datasets)
# Load the mtcars data set
data(mtcars)
# Display the first few rows of the data set
head(mtcars)

# Export the mtcars dataset to a CSV file
write.csv(mtcars, file = "mtcars_dataset.csv", row.names = FALSE)
getwd()
