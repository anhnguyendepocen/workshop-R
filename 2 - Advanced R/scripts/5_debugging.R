# set the working directory
dir <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(dir);

# execute the code in setup.R
# load data sets
# load tidyverse
source("1_setup.R")

## -----------------------------------------------

Factorial <- function(n) {
  result <- 1
  for(i in 1:n) {
    result <- result * i
  }
  return(result)
}

fac5 <- Factorial(5)

## print(), 80 ------------------------------------

print(fac5)

## message(), 81 ----------------------------------

Factorial <- function(n) {
  result <- 1
  for(i in 1:n) {
    result <- result * i
    message("step ", i, " from ", n, " -- result: ", result)
  }
  return(result)
}
fac5 <- Factorial(3)

## warning(), 83 -----------------------------------

Is_int <- function(n) {
  return( n == round(n) )
}

Factorial <- function(n) {
  if(!Is_int(n)){
    warning("non-integer value (n = ", n, ") in Factorial(). Calculating gamma(n+1)")
    return(gamma(n+1))
  }
  result <- 1
  for(i in 1:n) {
    result <- result * i
  }
  return(result)
}
fac3.5 <- Factorial(3.5)
print(fac3.5)

## stop(), 84 ----------------------------------------

Factorial <- function(n) {
  if(!is.numeric(n) || n < 0){
    stop('Argument "n" in Factorial() must be a positive number.')
  }
  result <- 1
  for(i in 1:n) {
    result <- result * i
  }
  return(result)
}
fac5_str <- Factorial("5")
print(fac5_str)

## spotting bugs, 87, 88 ------------------------------

Largest <- function(x) {
  result <- -Inf;
  for(i in 1:length(x)) {
    if(x[i] > result) {
      result <- x[i]
    }
  }
  return(result)
}

Largest(c(1, 2, 3))

set.seed(31415) # For reproducibility
candidates <- rpois(100, lambda = 2) %>%
  map(runif)
head(candidates, 2)

map(candidates, Largest)

## spotting bugs, 91 ----------------------------------

# please update the function
Largest <- function(x) {
  result <- -Inf;
  for(i in 1:length(x)) {
    if(x[i] > result) {
      result <- x[i]
    }
  }
  return(result)
}

map(candidates, largest)

## ----------------------------------------------------

Factorial <- function(n) {
  browser()
  result <- 1
  for(i in 1:n) {
    result <- result * i
  }
  return(result)
}

Factorial(5)