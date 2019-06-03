## ----comment = ''--------------------------------------------------------
getwd()

## ----comment = ''--------------------------------------------------------
path <- file.path("C:/Users/u0043788/Dropbox/R tutorial/Basic R")

## ----eval=FALSE----------------------------------------------------------
setwd("C:/Users/u0043788/Dropbox/R tutorial/Basic R")
path <- file.path("./data")

## ----eval=FALSE----------------------------------------------------------
path.hotdogs <- file.path(path, "hotdogs.txt")
path.hotdogs    # inspect path name
hotdogs <- read.table(path.hotdogs, header = FALSE,
                       col.names = c("type", "calories", "sodium"))
str(hotdogs)    # inspect data imported

## ----eval=FALSE----------------------------------------------------------
hotdogs2 <- read.table(path.hotdogs, header = FALSE,
                       col.names = c("type", "calories", "sodium"),
                       colClasses = c("factor", "NULL", "numeric"))
str(hotdogs2)

## ----eval=FALSE----------------------------------------------------------
path.pools <- file.path(path, "swimming_pools.csv")
pools <- read.csv(path.pools)
str(pools)

## ----eval=FALSE----------------------------------------------------------
pools <- read.csv(path.pools, stringsAsFactors = FALSE)
str(pools)

## ----eval=FALSE----------------------------------------------------------
library(readxl)
path.urbanpop <- file.path(path, "urbanpop.xlsx")
excel_sheets(path.urbanpop) # list sheet names with `excel_sheets()`
pop_1 <- read_excel(path.urbanpop, sheet = 1)
pop_2 <- read_excel(path.urbanpop, sheet = 2)
str(pop_1)
pop_list <- list(pop_1, pop_2)

