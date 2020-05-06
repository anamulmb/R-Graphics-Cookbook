# Homework 5 : Function #
print('Homework 5 : Function')

# John Doe

# Part 1 & 2 : Investigating the Reduce() function
################################################################
print('Part 1 & 2 : Investigating the Reduce() function')

?Reduce()
A <- c(5,5,5,5,5)
Add <- Reduce("+", A, accumulate = TRUE)
Add

# Part 3 : Calculating Cumulative Sum
################################################################

print('Part 3 : Calculating Cumulative Sum')
cumu_sum <- function (x){
  # set the cumulative sum variable to 0
  csum <- 0
  # cumulative sum calculation using the for loop
  for (value in x) {
    csum <- value + csum
    print(csum)
  }
}
A <- c(2,4,6,8)
cumu_sum(A)

# Part 4 : Calculating Factorial
################################################################
print('Part 4 : Calculating Factorial')

# Method 1: Without Asking the User for input
###############################################################
fact_cal <- function(y){
  fact = 1
  for( i in 1:y) {
    fact = fact * i
  }
  print(paste(fact))
}
fact_cal(4)

# Method 2: Asking the User for Input
##############################################################
factor_cal <- function(){
  # Asking for input
  no_in = as.integer( readline(" Input any number : "))
  fact = 1
  # checking whether the number
  if(no_in < 0) {
    print(" The number is negative ")
  } else if(no_in == 1) {
    print(" The factorial  is 1 ")
  } else {
    for( i in 1:no_in) {
      fact = fact * i
    }
    print(paste(" The factorial of ", no_in ,"is", fact ))
  }
}
factor_cal()


# Part 5 : Aggrergate Function on Iris Data
################################################################
print('Part 5 : Aggrergate Function on Iris Data')

# Method 1: Without Using the aggregate function 
###############################################################

nth_row <- function(){
  n = as.integer( readline(" Input the row number : "))
  # This will prepare a sorted iris datafrmae, grouped by plant species and increased order of Sepal.Length
  library(datasets)
  data(iris)
  iris_sorted <-iris[order(iris$Species, iris$Sepal.Length),]
  iris_sorted_row <- iris_sorted[seq(n, nrow(iris_sorted), 50), ]
  print(iris_sorted_row)
}

nth_row()

# Method 2: Using the aggregate function 
###############################################################
nth_row_agg <- function(){
  n = as.integer( readline(" Input the row number : "))
  # This will prepare a sorted iris datafrmae, grouped by plant species and increased order of Sepal.Length
  library(datasets)
  data(iris)
  iris_sorted <-iris[order(iris$Species, iris$Sepal.Length),]
  # Converting iris from dataframe to list because aggregate does not work on dataframes but list
  iris_sorted.list <- list(Sepal.Length=iris_sorted$Sepal.Length, Sepal.Width=iris_sorted$Sepal.Width, Petal.Length=iris_sorted$Petal.Length,Petal.Width=iris_sorted$Petal.Width,Species=iris_sorted$Species)
  # Using aggregate function to extract every nth row from the different species 
  iris_agg <- aggregate(cbind(Sepal.Length,Sepal.Width, Petal.Length, Petal.Width) ~ Species,iris_sorted.list, FUN = "[[",n )
  iris_agg
} 

nth_row_agg()
