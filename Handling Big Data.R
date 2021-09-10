# How are petal length and petal width related?
# Can we predict new petal width values?

# Handling Big Data
install.packages("ff")

# Adding Iris dataset to a variable
data("iris")

# Print Iris dataset
print(iris)

# Set working directory
setwd("/Users/deshantsachdeva/Downloads/MyData")

# Load the ff package
library(ff)

# Read a csv file as ff data frame
irisff <- read.table.ffdf(
  file = "Iris.csv",
  FUN = "read.csv"
)

# Inspect the class
class(irisff)

# Inspect the column names
names(irisff)

# Inspect the first few rows
irisff[1:5,]

# loading the biglm package
install.packages("biglm")
library(biglm)

# Create a linear regression model
model <- biglm(
  formula = Petal.Width ~ Petal.Length,
  data = irisff
)

# Summarise the model
summary(model)

# Create a scatterplot
plot(
  x = irisff$Petal.Length[],
  y = irisff$Sepal.Width[],
  main = "Iris Petal Length vs. Width",
  xlab = "Petal Length (cm)",
  ylab = "Petal Width (cm)"
)

# Get y-intercept from model
b <- summary(model)$mat[1,1]

# Get slope from model
m <- summary(model)$mat[2,1]

# Draw a regression line on plot
lines(
  x = irisff$Petal.Length[],
  y = m * irisff$Petal.Length[] + b,
  col = "red",
  lwd = 3
)

# Predict new values with the model
predict(
  object = model,
  newdata = data.frame(
    Petal.Length = c(2, 5, 7),
    Petal.Width = c(0, 0, 0)
  )
)

