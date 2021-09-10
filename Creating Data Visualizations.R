# How many cars of each type of Transmission?
# What does fuel economy look like?
# How do cylinders and fuel economy relate?

rm(list = ls(all.names = TRUE)) #will clear all objects includes hidden objects.
gc() #free up memory and report the memory usage.

# Creating Data Visualizations

# Set the working directory
setwd("/Users/deshantsachdeva/Downloads/MyData")

# Read a CSV data file
cars <- read.csv("mtcars.csv")

# Load the ggplot2 library
library(ggplot2)

# Create a frequency bar chart
ggplot(
  data = cars,
  aes(x = Transmission)) +
    geom_bar() +
    ggtitle("Count of cars by Transmission type") +
    xlab("Transmission Type") +
    ylab("Count of Cars")

# Create a histogram
ggplot(
  data = cars,
  aes(x = Fuel.Economy)) +
  geom_histogram(bins = 100) +
  ggtitle("Distribution of Fuel Economy") +
  xlab("Fuel Economy (mpg") +
  ylab("Count of Cars")

# Create a density plot
ggplot(
  data = cars,
  aes(x = Fuel.Economy)) +
  geom_density() +
  ggtitle("Distribution of Fuel Economy") +
  xlab("Fuel Economy (mpg") +
  ylab("Count of Cars")

# Create a scatter plot
ggplot(
  data = cars,
  aes(
    x = Cylinders,
    y = Fuel.Economy)
  ) +
  geom_point() +
  ggtitle("Distribution of Fuel Economy") +
  xlab("Fuel Economy (mpg") +
  ylab("Count of Cars")
