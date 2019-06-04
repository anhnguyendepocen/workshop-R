# set the working directory
dir <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(dir);

# execute the code in setup.R
# load data sets
# load tidyverse
source("1_setup.R")

## --------------------------------------------

## factor(), 22, 23 ---------------------------

sex <- factor(c('m', 'f', 'm', 'f'),
              levels = c('m', 'f'))

# warning, since 'male' is an unrecognized factor level
sex[1] <- 'male'

print(sex)

# reset the variable sex
sex <- factor(c('m', 'f', 'm', 'f'),
              levels = c('m', 'f'))

## levels(), 24, 25 ----------------------------

levels(sex)

levels(sex) <- c('male', 'female')
sex

## R challenge, 26 -----------------------------

asia <- filter(gapminder, continent == 'Asia')

## ---------------------------------------------

## droplevels(), 28, 29 ------------------------

asia$country <- droplevels(asia$country)
levels(asia$country)

## add level, 30 -------------------------------

levels(sex) <- c(levels(sex), 'x')
print(sex)

## cut, 31, 32 ---------------------------------

cut(gapminder$pop,
    breaks = c(0, 10^7, 5*10^7, 10^8, Inf))

## R challenge, 33 ------------------------------

## ----------------------------------------------

## geom_bar(), 35, 36, 37, 38 -----------------------

ggplot(gapminder2007) +
  geom_bar(aes(life_expectancy_binned))

ggplot(gapminder2007) +
  geom_bar(aes(life_expectancy_binned,
               fill = continent))

ggplot(gapminder2007) +
  geom_bar(aes(life_expectancy_binned,
               fill = continent),
           position = position_dodge())

ggplot(gapminder2007) +
  geom_bar(aes(life_expectancy_binned,
               fill = continent,
               y = ..prop.., group = continent),
           position = position_dodge())