#task 1
# Install and load the ggplot2 package
install.packages("ggplot2")
library(ggplot2)
# Load the air quality dataset
data("airquality")
# Summarize the data: Calculate the average temperature by month
avg_temp_by_month <- aggregate(Temp ~ Month, data = airquality, FUN = mean)
# Convert the Month column to a factor with appropriate labels
avg_temp_by_month$Month <- factor(avg_temp_by_month$Month, 
                                  labels = c("May", "June", "July", "August", "September"))
# Create the bar chart with customized colors and themes
ggplot(avg_temp_by_month, aes(x = Month, y = Temp)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  labs(title = "Average Temperature by Month",
       x = "Month",
       y = "Average Temperature (F)") +
  theme_minimal(base_size = 15) + 
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold", size = 20),
    axis.title.x = element_text(face = "bold", size = 15),
    axis.title.y = element_text(face = "bold", size = 15),
    axis.text.x = element_text(face = "bold", size = 12),
    axis.text.y = element_text(face = "bold", size = 12)
  ) +
  scale_fill_manual(values = c("May" = "lightcoral", "June" = "lightblue", "July" = "lightgreen", "August" = "lightgoldenrod", "September" = "lightpink"))


#task 2
# Create the histogram with customized colors and themes
ggplot(airquality, aes(x = Temp)) +
  geom_histogram(binwidth = 5, fill = "lightblue", color = "black", alpha = 0.7) +
  labs(title = "Distribution of Temperatures in New York (May to September 1973)",
       x = "Temperature (F)",
       y = "Frequency") +
  theme_minimal(base_size = 15) +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold", size = 15),  # Adjusted title size
    axis.title.x = element_text(face = "bold", size = 15),
    axis.title.y = element_text(face = "bold", size = 15),
    axis.text.x = element_text(face = "bold", size = 12),
    axis.text.y = element_text(face = "bold", size = 12)
  )

