# set the working directory
dir <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(dir);

# execute the code in setup.R
# load data sets
# load tidyverse
source("1_setup.R")

## -----------------------------------------------

## What is a functional, 56 ----------------------

f <- function(x){
  x^2
} 

integrate(f,  lower = 0, upper = 1)

## purrrr, 58 -------------------------------------

# install.packages(purrr)
require(purrr)

## map(), 59, 61 -----------------------------------

map(policy_data, class)

map_chr(policy_data, class)

map_int(policy_data, length)

# you get an error message, when the conversion is impossible
map_int(policy_data, class)


## keep(), 62 --------------------------------------

factor_data <- keep(policy_data,
                    is.factor)

# There are 22 covariates in policy_data
ncol(policy_data)
colnames(policy_data)

# 11 of these covariates are factors
ncol(factor_data)
colnames(factor_data)


## discard(), 63 ------------------------------------

non_factor_data <- discard(policy_data,
                           is.factor)

colnames(non_factor_data)

## every(), 64 --------------------------------------

# not every observation in cout1 is NA
every(policy_data$cout1, is.na)

# cout1 has 33386 NA observations and 5689 other observations
sum(is.na(policy_data$cout1))
sum(!is.na(policy_data$cout1))

## some(), 65, 66 ------------------------------------

some(policy_data$cout1, is.na)

Is_minor <- function(age) {
  return(age < 18)
} 

some(policy_data$age, Is_minor)

# the minimal age is 18, no-one is younger
min(policy_data$age)

## R challenge, 67 -----------------------------------

## ---------------------------------------------------

## nest(), 69, 70 ------------------------------------

nested_data <- policy_data %>%
  group_by(utilisation) %>%
  nest()
print(nested_data)

## R challenge, 71 -----------------------------------

## ---------------------------------------------------


## R challenge, 73, 74, 75, 76 ------------------------

nested_data <- policy_data %>%
  mutate(young_driver = age < 30) %>% # add a variable young_driver
  filter(cout > 0) %>% # only consider observations with a nonnegative cost
  group_by(utilisation) %>% # split by utilisation
  nest() # create sub data sets

# Define a function to fit the desired linear model
Fit_model <- function(df) {
  lm(cout ~ young_driver, data = df)
}


# Fit the linear model on each of the sub data sets in nested_data
result <- nested_data %>%
  mutate(model = map(data, Fit_model))

# Create a function to select the desired coefficient
Select_coef <- function(fit){
  coefficients(fit)["young_driverTRUE"]
}

# Add the young_driver effect as a variable in the data set
result <- result %>%
  mutate(effect_young_driver = map_dbl(model, Select_coef))

# Show only the columns utilisation and effect_young_driver
result %>% select(utilisation, effect_young_driver)

## We can combine the instructions with the pipe operation in a single block:
policy_data %>%
  mutate(young_driver = age < 30) %>% # add a variable young_driver
  filter(cout > 0) %>% # only consider observations with a nonnegative cost
  group_by(utilisation) %>% # split by utilisation
  nest() %>%
  mutate(model = map(data, Fit_model)) %>%
  mutate(effect_young_driver = map_dbl(model, Select_coef)) %>%
  select(utilisation, effect_young_driver)

