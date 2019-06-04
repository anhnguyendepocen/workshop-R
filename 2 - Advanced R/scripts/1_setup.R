## Setup, 5

# install.packages("tidyverse")
# The require and library function are almost identical,
# but require only loads the package when it is not yet loaded.
require(tidyverse) 

## Loading data sets -----------------------------

## policy data set, 12 

# install.packages("rstudioapi")
dir <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(dir);

policy_data <- read.csv(file = '../../data/PolicyData.csv', sep = ';')

## R challenge, 13 --------------------------------

## ------------------------------------------------

## gapminder data set, 15

#install.packages("gapminder")
require(gapminder)

## R challenge, 16 --------------------------------

## ------------------------------------------------
