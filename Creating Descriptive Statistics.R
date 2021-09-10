# How many cars of each type of transmission?
# What does fuel economy look like?
# How are cylinders and fuel economy related?

# Creating Descriptive Statistics

# Set the working directory
setwd("/Users/deshantsachdeva/Downloads/MyData")

# Read a CSV data file
cars <- read.csv("mtcars.csv")

# Peek at the data
head(cars)

# Create a frequency table
table(cars$Transmission)
table(cars$Name)

# Get the minimum value
min(cars$Fuel.Economy)

# Get the maximum value
max(cars$Fuel.Economy)

# Get the average value
mean(cars$Fuel.Economy)

# Get the median value
median(cars$Fuel.Economy)

# Get the quartiles
quantile(cars$Fuel.Economy)

# Get the standard deviation
sd(cars$Fuel.Economy)

# Get the total value
sum(cars$Fuel.Economy)

# Get the correlation coefficient
cor(
  x = cars$Cylinders,
  y = cars$Fuel.Economy
)

# Summarize an entire table
summary(cars)
