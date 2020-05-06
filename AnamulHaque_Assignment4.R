###################Assignment 4: Importing and Exporting Data######################
###################################################################################
print('Assignment 4: Importing and Exporting Data')


# Question No 1
print("Question 1: mtcars data")
data("mtcars")
result_mtcars <- mtcars[1:10, c(1,2,6)]
result_mtcars


## Question No 2 : 
print("Question 2: College Football Stadium Data")
College_Football_Stadiums <- read.delim("College_Football_Stadiums.txt", header=TRUE)
College_Football_Stadiums[College_Football_Stadiums == '**'] <- NA
result_College_Football_Stadiums <- College_Football_Stadiums[1:15, c(2,6,10)]
result_College_Football_Stadiums


### Printing Question No 3
print("Question 3: Working With Files From Internet")
boxplt_format <- read.delim("http://www.sthda.com/upload/boxplot_format.txt", header=TRUE)
result_boxplot_format = boxplt_format[seq(1, nrow(boxplt_format), 10),] 
result_boxplot_format


#### Printing Question No 4
print("Question 4: Working With the scan() Function on Beer Data")
variable.names <- scan("beers.txt", skip=5, nlines=1, what="")
beers_data <- scan("beers.txt",skip = 15, sep=',', what = list('numeric','integer','integer','character','character','integer','integer'))
beers_table <- as.data.frame(beers_data,row.names = NULL, ncol=7, byrow=TRUE, col.names = variable.names)
result_beers_table <- beers_table[1:20, c("ID","Name")]
result_beers_table