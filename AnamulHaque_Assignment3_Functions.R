# Homework 3 : Function #
# Anamul Haque
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

#Method 1: Without Asking the User
###############################################################
fact_cal <- function(y){
  fact = 1
  for( i in 1:y) {
    fact = fact * i
  }
  print(paste(fact))
}
fact_cal(4)

#Method 2: Asking the User for input
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
    print(paste(" The factorial is ", no_in ,"is", fact ))
  }
}
factor_cal()


# Part 5 : Aggrergate Function on Iris Data
################################################################
print('Part 5 : Aggrergate Function on Iris Data')

sorting_iris <- function(x){
  # accept the input provided by the user and convert to integer
  # First order All the data based on the seapl length
  #iris
  #Sorting iris by sepal length for each species
  iris_ordered <- iris[order(Species, Sepal.Length), ]
  
  #Splitting the Ordered dataframe into three groups
  iris_orderd_split <- split(iris_ordered, with(iris_ordered, interaction(Species)), drop = TRUE)
  
  #Renaming the splits
  iris_setosa <- iris_orderd_split$setosa
  iris_versicolor <- iris_orderd_split$versicolor
  iris_virginica <- iris_orderd_split$virginica
  #Isolating Identical Rows From the Table
  iris_setosa_nth <- iris_setosa [x,]
  iris_versicolor_nth <- iris_versicolor [x,]
  iris_virginica_nth <- iris_virginica [x,]
  sorted_iris <- rbind(iris_setosa_nth,iris_versicolor_nth,iris_virginica_nth)
  sorted_iris
} 
