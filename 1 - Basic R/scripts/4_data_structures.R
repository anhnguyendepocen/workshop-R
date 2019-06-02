## ----vectors_in_R, eval=FALSE--------------------------------------------
my_vector <- c(1, 2, 3, 4)
my_vector_2 <- c(0, 3:5, 20, 0)
my_vector_2[2]       # inspect entry 2 from vector my_vector_2
my_vector_2[2:3]     # inspect entries 2 and 3
length(my_vector_2)  # get vector length
my_family <- c("Katrien", "Jan", "Leen")
my_family

## ----vector_challenge, comment = ''--------------------------------------
my_vector <- c("Katrien Antonio", "teacher")
names(my_vector) <- c("Name", "Profession")
my_vector

## ----vector_challenge_solved, comment = ''-------------------------------
my_vector <- c("Katrien Antonio", "teacher")
names(my_vector) <- c("Name", "Profession")
my_vector

attributes(my_vector)
length(my_vector)
names(my_vector)

## ----matrices_in_R, comment = ''-----------------------------------------
my_matrix <- matrix(1:12, 3, 4, byrow = TRUE)
my_matrix
my_matrix[1, 1]

## ----comment = '', eval = FALSE------------------------------------------
mtcars
str(mtcars)
head(mtcars)

## ----comment = '', eval = FALSE------------------------------------------
summary(mtcars$cyl)   # use $ to extract variable from a data frame

## ----comment = '', eval = FALSE------------------------------------------
diamond
str(diamond)  # built-in in library ggplot2
head(diamond)

## ----comment = ''--------------------------------------------------------
my_list <- list(one = 1, two = c(1, 2), five = seq(1, 4, length=5),
                six = c("Katrien", "Jan"))
names(my_list)
str(my_list)