#a. Create an object that stores the value 3^2 \times 4^{1/8}3 2 × 4 1 / 8
a <- (3**2)*(4**(1/8))

#b. Overwrite your object in (a) by itself divided by 2.33.  Print the result to the console.
a <- a/2.33
print(a)

#c. Create a new object with the value -8.2 X 10^{-13}
c <- -8.2*10**(-13)


#d. Print directly to the console the result of multiplying (b) by (c)

print(a*c)

#e. Create and store a sequence of values from 5 to -11 that progresses in steps of 0.3.  Print to screen.
e <- seq(from=5, to=-11, by= -0.3)
e

#f. Overwrite the object from (e) using the same sequence with the order reversed.  Print to screen. 
e <- rev(e)
e

#g. Repeat the vector c(-1,3,-5,7,-9) twice, with each element repeated 10 times, store the result, and print to screen. 
g <- rep(c(-1,3,-5,7,-9), times = 2, each = 10)
g

#h. Create and store a vector that contains, in any configuration, the following:
##1. A sequence of integers from 6 to 12 (inclusive)
##2. A repetition of the value 5.3, 3 times.
##3. The number -3
##4. A sequence of nine values starting at 102 and ending at the number that is the total length of the vector created in (g)
##5. Print the vector to screen
h <- c (6:12, rep(5.3, times =3),-3,seq(from=102, to=length(g),length=9))
h

#i. Confirm that the length of the vector created in (h) is 20. 
length(h)

#j. Create and store a vector that contains the following, in this order:
##1. A sequence of length 5 from 3 to 6 (inclusive)
##2. A twofold repetition of the vector c(-2,-5.1, -33)
##3. The value LaTeX: \frac{7}{42} + 27 42 + 2

j <- c (seq(from=3, to=6,length=5),rep(c(-2,-5.1,-33), times = 2), (7/42)+2)
j

#k. Extract the first and last elements of your vector from (j), storing them in a new object.  Print to screen. 
k <- c(j[1], rev(j)[1])
k

#l. Store as another new object the values returned by omitting the first and last of your vector from (j).  Print to screen. 
l <- j[3:length(j)-1]
l

#m. Use help in R to research the function sort()
?sort()

#n. Overwrite (j) with the same values sorted from smallest to largest.  Print to screen. 
n <- sort(j, decreasing = FALSE)
n

#o. Create a new vector as a copy of (n) by assigning (n) as is to a newly named object.using this new copy of (n), overwrite any values less than 0 with 99.  
o <- n
o[o<0] <-99
o