#Create s3
s3 <- list(animalType = "dog", breed = "maltese", age = 14, name = "Marshmallow")
class(s3) <- "Animal"
s3

#setting a constructor function
Animal <- function(a, b, c, d){
  value <- list(animalType = a, breed = b, age = c, name = d)
  attr(value, "class") <- "Animal"
  value
}

s3.2 <- Animal("dog", "Maltese", 13, "Indie")
s3.2

name.Animal <- function(obj){
  cat("The animal's name is:", obj$name, "\n")
}
name.Animal(s3)
name.Animal(s3.2)


#Create S4
#First set a class
setClass("Animal", slots = list(animalType = "character", breed = "character", 
                                age = "numeric", name = "character"))
s4 <- new("Animal", animalType = "Dog", breed = "Pitbull",
          age = 15, name = "Luci")
s4

#Verify ifs4
isS4(s4)
isS4(s3)