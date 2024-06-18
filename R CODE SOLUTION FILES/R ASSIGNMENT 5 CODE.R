#Question 1
# Create the test performance vector
test_scores <- c(34, 57, 69, 92)

# Print the vector
print(test_scores)

#Question 2
# Function to classify performance
classify_performance <- function(score) {
  if (score < 50) {
    return("poor")
  } else if (score < 70) {
    return("average")
  } else if (score < 90) {
    return("good")
  } else {
    return("excellent")
  }
}

# Test performance vector
test_scores <- c(34, 57, 69, 92)

# Classify each score
performance_classifications <- sapply(test_scores, classify_performance)

# Print the classifications
print(performance_classifications)

#QUESTION 3
# Loop through each score and classify it
for (i in 1:length(test_scores)) {
  performance_classifications[i] <- classify_performance(test_scores[i])
}

# Print the classifications
print(performance_classifications)
getwd()
