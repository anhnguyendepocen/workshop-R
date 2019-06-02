## ------------------------------------------------------------------------
my_numeric <- 42.5

my_character <- "some text"

my_logical <- TRUE

my_date <- as.Date("05/29/2018", "%m/%d/%Y")

## ----comment = ''--------------------------------------------------------
class(my_numeric)
class(my_date)

## ----eval=FALSE----------------------------------------------------------
ls()

## ----eval=FALSE----------------------------------------------------------
rm(a)                                     # remove a single object
rm(my_character, my_logical)              # remove multiple objects
rm(list = c('my_date', 'my_numeric'))     # remove a list of objects
rm(list = ls())                           # remove all objects
