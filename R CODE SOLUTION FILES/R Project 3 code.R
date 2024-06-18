#QUESTION 1
# Load ggplot2 package
library(ggplot2)

# Load datasets
data(mtcars)
data(airquality)

# Plot counts by a discrete variable for mtcars (number of cylinders)
ggplot(mtcars, aes(x = as.factor(cyl))) +
  geom_bar() +
  labs(title = "Count of Cars by Number of Cylinders",
       x = "Number of Cylinders",
       y = "Count") +
  theme_minimal()

# Plot counts by a discrete variable for air quality (month)
ggplot(airquality, aes(x = as.factor(Month))) +
  geom_bar() +
  labs(title = "Count of Days by Month",
       x = "Month",
       y = "Count") +
  theme_minimal()

#QUESTION 2
# Histogram for mtcars (miles per gallon)
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 2, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Miles Per Gallon (mpg)",
       x = "Miles Per Gallon (mpg)",
       y = "Frequency") +
  theme_minimal()

# Histogram for airquality (temperature)
ggplot(airquality, aes(x = Temp)) +
  geom_histogram(binwidth = 5, fill = "green", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Temperature",
       x = "Temperature",
       y = "Frequency") +
  theme_minimal()

#QUESTION 3
# Load packages
install.packages("dplyr")
library(dplyr)
library(ggplot2)
# Calculate mean mpg for each number of cylinders
mtcars_summary <- mtcars %>%
  group_by(cyl) %>%
  summarise(
    mean_mpg = mean(mpg, na.rm = TRUE),
    median_mpg = median(mpg, na.rm = TRUE),
    min_mpg = min(mpg, na.rm = TRUE),
    max_mpg = max(mpg, na.rm = TRUE)
  )

# Print the summary
print(mtcars_summary)


# Calculate mean Temp for each Month
airquality_summary <- airquality %>%
  group_by(Month) %>%
  summarise(
    mean_Temp = mean(Temp, na.rm = TRUE),
    median_Temp = median(Temp, na.rm = TRUE),
    min_Temp = min(Temp, na.rm = TRUE),
    max_Temp = max(Temp, na.rm = TRUE)
  )

# Print the summary
print(airquality_summary)

#QUESTION 4
#MTCARS
# Scatter plot of mpg vs. hp with smoothed conditional mean line
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "blue", alpha = 0.6) +
  geom_smooth(method = "loess", color = "red", se = FALSE) +
  labs(title = "Scatterplot of MPG vs. Horsepower",
       x = "Horsepower (hp)",
       y = "Miles Per Gallon (mpg)") +
  theme_minimal()

#AIR QUALIFY
# Scatterplot of Temp vs. Wind with smoothed conditional mean line
ggplot(airquality, aes(x = Wind, y = Temp)) +
  geom_point(color = "green", alpha = 0.6) +
  geom_smooth(method = "loess", color = "red", se = FALSE) +
  labs(title = "Scatterplot of Temperature vs. Wind Speed",
       x = "Wind Speed (mph)",
       y = "Temperature (F)") +
  theme_minimal()

#QUESTION 5
# Load ggplot2 package
library(ggplot2)

# Scatter plot of mpg vs. hp with smoothed conditional mean line and updated labels
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "blue", alpha = 0.6) +
  geom_smooth(method = "loess", color = "red", se = FALSE) +
  labs(title = "Relationship Between Horsepower and Fuel Efficiency",
       x = "Horsepower (HP)",
       y = "Fuel Efficiency (MPG)") +
  theme_minimal()

#QUESTION 6
# Load ggplot2 package
library(ggplot2)

# Scatterplot of mpg vs. hp with smoothed conditional mean line and updated labels
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "blue", alpha = 0.6) +
  geom_smooth(method = "loess", color = "red", se = FALSE) +
  labs(title = "Relationship Between Horsepower and Fuel Efficiency",
       x = "Horsepower (HP)",
       y = "Fuel Efficiency (MPG)") +
  theme_bw()  # Change theme to theme_bw (black and white)

#QUESTION 7

# Yields recorded from the 10 randomly selected farmers' fields
yields <- c(14.3, 12.6, 13.7, 10.9, 13.7, 12.0, 11.4, 12.0, 12.6, 13.1)

# Perform a one-sample t-test
t_test_result <- t.test(yields, mu = 12.0)

# Print the result
print(t_test_result)


#QUESTION 8
# Create a data frame with three groups (A, B, and C) each having 3 scores
data <- data.frame(
  Group = rep(c("A", "B", "C"), each = 3),
  Score = c(10, 12, 11, 14, 13, 15, 9, 8, 10)
)

# Print the data frame
print(data)

# Perform one-way ANOVA
anova_result <- aov(Score ~ Group, data = data)

# Print the ANOVA summary
summary(anova_result)
