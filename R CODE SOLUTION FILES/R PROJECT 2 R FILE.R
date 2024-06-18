#QUESTION 1
# Load the mtcars data set
data(mtcars)
head(mtcars)
# 1. Using lapply
min_values_lapply <- lapply(mtcars, min)
print(min_values_lapply)
# 2. Using sapply
min_values_sapply <- sapply(mtcars, min)
print(min_values_sapply)
# For demonstration, using tapply on the 'mpg' column grouped by number of cylinders 
min_values_tapply <- tapply(mtcars$mpg, mtcars$cyl, min)
print(min_values_tapply)

#QUESTION 2
read.table("filename.txt", sep = "|", header = TRUE)

#QUESTION 3
# URL of the dataset
url <- "https://raw.githubusercontent.com/selva86/datasets/master/mtcars.csv"
# Read the dataset from the URL
mtcars_data <- read.csv(url)
# Display the first few rows of the dataset
head(mtcars_data)

#Question 4
# Load the mtcars dataset
data(mtcars)
# Calculate the correlation coefficient between mpg and hp
correlation_coefficient <- cor(mtcars$mpg, mtcars$hp)
print(paste("Correlation coefficient between mpg and hp:", correlation_coefficient))
# Perform a hypothesis test for the correlation
correlation_test <- cor.test(mtcars$mpg, mtcars$hp)
print(correlation_test)
# Interpretation of the correlation value
if (correlation_coefficient > 0) {
  direction <- "positive"
} else if (correlation_coefficient < 0) {
  direction <- "negative"
} else {
  direction <- "no"
}
print(paste("The correlation between mpg and hp is", direction, "and the correlation coefficient is", correlation_coefficient))

# Interpretation of the significance level
if (correlation_test$p.value < 0.05) {
  significance <- "significant"
} else {
  significance <- "not significant"
}
print(paste("The correlation is", significance, "at the 0.05 significance level. The p-value is", correlation_test$p.value))


#QUESTION 5
# Load the iris dataset
data(iris)

# Export the iris dataset as a text file
write.table(iris, file = "iris_dataset.txt", sep = "\t", row.names = FALSE, col.names = TRUE)


#QUESTION 6
# Apply filter function to get the width and length for Setosa species
setosa_data <- subset(iris, Species == "setosa", select = c(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width))
# Display the filtered data
print(setosa_data)

#QUESTION 7
# Load the iris dataset
data(iris)
# Aggregate the Sepal.Length and Petal.Length by Species
length_aggregated <- aggregate(cbind(Sepal.Length, Petal.Length) ~ Species, data = iris, sum)
# Display the aggregated data
print(length_aggregated)





