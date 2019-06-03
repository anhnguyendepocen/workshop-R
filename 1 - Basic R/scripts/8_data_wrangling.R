## ----eval=FALSE----------------------------------------------------------
str(mtcars)

## ----message=FALSE, out.width='45%', fig.align="center"------------------
library(tibble)
as_tibble(mtcars)

## ----eval=FALSE----------------------------------------------------------
library(dplyr)
diamonds %>% filter(cut == "Ideal")

## ------------------------------------------------------------------------
filter(diamonds, cut == "Ideal")

## ------------------------------------------------------------------------
mutate(diamonds, price_per_carat = price/carat)

## ------------------------------------------------------------------------
diamonds %>% mutate(price_per_carat = price/carat) %>% 
  filter(price_per_carat > 1500) 

## ------------------------------------------------------------------------
diamonds %>% summarise(mean = mean(price), std_dev = sd(price))

## ------------------------------------------------------------------------
diamonds %>% group_by(cut) %>% summarize(price = mean(price), carat = mean(carat))

