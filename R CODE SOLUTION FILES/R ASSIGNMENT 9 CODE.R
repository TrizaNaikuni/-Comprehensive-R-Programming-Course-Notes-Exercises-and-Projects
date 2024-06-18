#TASK 1 PART 1
#  Create two vectors
vector1 <- c(10, 20, 30, 40, 50)
vector2 <- c(5, 15, 25, 35, 45)

# Create a data frame with the two vectors
data <- data.frame(vector1, vector2)

# Print the data frame to see the output
print(data)

#PART 2
#Plot a normal distribution based on vector1
library(ggplot2)
ggplot(data, aes(x = vector1)) + 
  geom_density(color = "blue", fill = "blue", alpha = 0.3) + 
  labs(title = "Normal Distribution of Vector1", x = "vector1", y = "Density") + 
  theme_minimal()


#TASK 2 PART 1
# Load necessary library
library(ggplot2)
#  Load the air quality dataset
data("airquality")
# Print the first few rows of the dataset to see the structure
head(airquality)
#  Create a scatter plot with a regression line
ggplot(airquality, aes(x = Wind, y = Ozone)) + 
  geom_point(color = "blue", alpha = 0.6) +  # Scatter plot
  geom_smooth(method = "lm", color = "red", se = FALSE) +  # Regression line
  labs(title = "Scatter Plot with Regression Line", x = "Wind (mph)", y = "Ozone (ppb)") + 
  theme_minimal()

#TASK 3

# Create a box plot for the Solar.R variable
ggplot(airquality, aes(y = Solar.R)) + 
  geom_boxplot(fill = "lightblue", color = "darkblue") + 
  labs(title = "Box Plot of Solar Radiation", y = "Solar Radiation (lang)") + 
  theme_minimal()
