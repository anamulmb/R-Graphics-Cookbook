# Question 1
###############################################


# Declaring the two vectors vec1 and vec2
vec1 <- c(2,1,1,3,2,1,0)
vec2 <- c(3,8,2,2,0,0,0)

# Using vec1 and vec2, I am executing a statement that multiplies the corresponding elements of vec1 & vec2
# If  their sum is greater than 3, the output will be a multiplication for corresponding elements in the of these two vectors
# Otherwise, the code should simply sum the two elements.
# I am using ifelse statement

mult_sum <-ifelse(vec1+vec2>3,
                  vec1*vec2,
                  vec1+vec2)

# Checking the output
mult_sum

# Question 2
###############################################

#i
mymat<-matrix(as.character(1:16),4,4)



firstletter<-substr(diag(mymat),1,1)
hasg<-ifelse(firstletter=="G"|firstletter=="g","HERE",diag(mymat))

if(any(hasg=="HERE")){
  diag(mymat)<-hasg
  
}else{
  mymat<-diag(1,dim(mymat)[1],dim(mymat)[2])
  
}

#ii
mymat<-matrix(c("DANDALION","Hyacinthus","Gerbera","Marigold","geranium","ligularia","Pachysandra","SNAPRAGON","GLADIOLUS"),3,3)


firstletter<-substr(diag(mymat),1,1)
hasg<-ifelse(firstletter=="G"|firstletter=="g","HERE",diag(mymat))

if(any(hasg=="HERE")){
  diag(mymat)<-hasg
  
}else{
  mymat<-diag(1,dim(mymat)[1],dim(mymat)[2])
  
}

#iii
mymat<-matrix(c("GREAT","exercises","right","here"),2,2,byrow=T)


firstletter<-substr(diag(mymat),1,1)
hasg<-ifelse(firstletter=="G"|firstletter=="g","HERE",diag(mymat))

if(any(hasg=="HERE")){
  diag(mymat)<-hasg
  
}else{
  mymat<-diag(1,dim(mymat)[1],dim(mymat)[2])
  
}

# Question 3
###############################################
# Part i
# Setting the list
mylist<- list(aa=c(3.4,1),bb=matrix(1:4,2,2), cc=matrix(c(T,T,F,T,F,F),3,2),
              dd="String here",ee=list(c("Hello","you"),matrix(c("hello","there"))),
              ff=matrix(c("red","green","blue","yellow")))

# Here I am using the for loop to count list inside mylist
# Initiating the loop with list count 0
# list_count is the counter
list_count <-0
for(i in 1:length(mylist)){
  member_list<-mylist[[i]]
  
  if(is.matrix(member_list)==T){
    list_count<-list_count+1
  }else{
    for(j in 1:length(member_list)){
      sub_member_list<-member_list[[j]]
      if(is.matrix(sub_member_list==T)){
        list_count<-list_count+1
      }
    }
  }
}
list_count

# Part ii
# Setting the list
mylist <- list("tricked you", as.vector(matrix(1:6, 3,2)))

# Here I am using the for loop to count list inside mylist
# Initiating the loop with list count 0
# list_count is the counter
list_count <-0
for(i in 1:length(mylist)){
  member_list<-mylist[[i]]
  
  if(is.matrix(member_list)==T){
    list_count<-list_count+1
  }else{
    for(j in 1:length(member_list)){
      sub_member_list<-member_list[[j]]
      if(is.matrix(sub_member_list==T)){
        list_count<-list_count+1
      }
    }
  }
}
list_count


#Part iii
# Setting the list
mylist <- list(list(1,2,3),list(c(3,2),2),list(c(1,2),matrix(c(1,2))),rbind(1:10,100:91))

# Here I am using the for loop to count list inside mylist
# Initiating the loop with list count 0
# list_count is the counter
list_count <-0
for(i in 1:length(mylist)){
  member_list<-mylist[[i]]
  
  if(is.matrix(member_list)==T){
    list_count<-list_count+1
  }else{
    for(j in 1:length(member_list)){
      sub_member_list<-member_list[[j]]
      if(is.matrix(sub_member_list==T)){
        list_count<-list_count+1
      }
    }
  }
}
list_count

# Question 4
###############################################
mystring <- "R fever"

index <- 1
ecount <- 0
result <- mystring
while (ecount < 2 && index <= nchar(mystring)) {
  
  character <- substr(mystring, index, index)
  
  if (character == "e" || character == "E") {
    ecount <- ecount + 1
  }
  if (ecount == 2) {
    result <- substr(mystring, 1, index - 1)
  }
  index <- index + 1
}
result

###############
mystring<-"beautiful"
index <- 1
ecount <- 0
result <- mystring
while (ecount < 2 && index <= nchar(mystring)) {
  
  character <- substr(mystring, index, index)
  
  if (character == "e" || character == "E") {
    ecount <- ecount + 1
  }
  if (ecount == 2) {
    result <- substr(mystring, 1, index - 1)
  }
  index <- index + 1
}
result

##############
mystring<-"ECCENTRIC"
index <- 1
ecount <- 0
result <- mystring
while (ecount < 2 && index <= nchar(mystring)) {
  
  character <- substr(mystring, index, index)
  
  if (character == "e" || character == "E") {
    ecount <- ecount + 1
  }
  if (ecount == 2) {
    result <- substr(mystring, 1, index - 1)
  }
  index <- index + 1
}
result

###################
mystring<-"Elab0rAte"
index <- 1
ecount <- 0
result <- mystring
while (ecount < 2 && index <= nchar(mystring)) {
  
  character <- substr(mystring, index, index)
  
  if (character == "e" || character == "E") {
    ecount <- ecount + 1
  }
  if (ecount == 2) {
    result <- substr(mystring, 1, index - 1)
  }
  index <- index + 1
}
result

#######################


mystring<-"eeeeek!"
index <- 1
ecount <- 0
result <- mystring
while (ecount < 2 && index <= nchar(mystring)) {
  
  character <- substr(mystring, index, index)
  
  if (character == "e" || character == "E") {
    ecount <- ecount + 1
  }
  if (ecount == 2) {
    result <- substr(mystring, 1, index - 1)
  }
  index <- index + 1
}
result