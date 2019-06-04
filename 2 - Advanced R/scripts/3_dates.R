# set the working directory
dir <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(dir);

# execute the code in setup.R
# load data sets
# load tidyverse
source("1_setup.R")

## --------------------------------------------

## as.Date(), 41, 42, 43 ----------------------

as.Date('2019-06-05',
        format = '%Y-%m-%d')

?strptime

as.Date(21705, origin = '1960-01-01')

## R challenge, 44 -----------------------------

## ---------------------------------------------

## format(), 46 --------------------------------

today <- as.Date('2019-06-05',
                 format = '%Y-%m-%d')
format(today, '%A %d %B %Y')

## adding and subtracting dates, 47 ------------

policy_duration =
  policy_data$end - policy_data$start

tomorrow = today + 1
print(tomorrow)

## lubridate, 48 -------------------------------

# install.packages("lubridate")
require(lubridate)

## access date components, 49 -------------------

year(today)
month(today)
quarter(today)

## advanced date math, 50, 51 -------------------

today + months(3)

floor_date(today, unit = "month")
floor_date(today, unit = "year")

## seq, 52 ---------------------------------------

seq(from = as.Date('2019-01-01'),
    to = as.Date('2019-12-31'),
    by = '1 month')

seq(from = as.Date('2019-01-01'),
    to = as.Date('2019-12-31'),
    by = '7 day')

## R challenge, 53 -------------------------------

## -----------------------------------------------


