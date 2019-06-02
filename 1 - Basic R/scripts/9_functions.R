## ----eval=FALSE----------------------------------------------------------
3 == (2 + 1)
"intermediate" != "r"
(1 + 2) > 4
katrien <- c(19, 22, 4, 5, 7)
katrien > 5

## ----eval=FALSE----------------------------------------------------------
TRUE & TRUE
FALSE | TRUE
5 <= 5 & 2 < 3
3 < 4 | 7 < 6

## ------------------------------------------------------------------------
katrien <- c(19, 22, 4, 5, 7)
jan <- c(34, 55, 76, 25, 4)
katrien > 5 & jan <= 30

## ------------------------------------------------------------------------
!TRUE

## ----comment = ''--------------------------------------------------------
num_attendees <- 30
if (num_attendees > 5) {
  print("You're popular!")
}

## ----comment = ''--------------------------------------------------------
num_attendees <- 5
if (num_attendees > 5) {
  print("You're popular!")
}else{
  print("You are not so popular!")
}

## ----comment = ''--------------------------------------------------------
todo <- 64

while (todo > 30) {
  print("Work harder")
  todo <- todo - 7
}

## ----comment = '', eval=FALSE--------------------------------------------
primes <- c(2, 3, 5, 7, 11, 13)

# loop version 1
for (p in primes) {
  print(p)
}
# loop version 2
for (i in 1:length(primes)) {
  print(primes[i])
}

## ----comment = ''--------------------------------------------------------
my_sqrt <- function(x) {
  sqrt(x)
}

# use the function
my_sqrt(12)

## ----comment = ''--------------------------------------------------------
my_sqrt <- function(x, print_info = TRUE) {
  y <- sqrt(x)
  if (print_info) {
    print(paste("sqrt", x, "equals", y))
  }
  return(y)
}

# some calls of the function
my_sqrt(16)
my_sqrt(16, FALSE)
my_sqrt(16, TRUE)

## ----eval=FALSE----------------------------------------------------------
## cat("Mean is:", mean, ", SD is:", stdv, "\n")

