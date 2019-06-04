# set the working directory
dir <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(dir);

# execute the code in setup.R
# load data sets
# load tidyverse
source("1_setup.R")

## ------------------------------------------------

## Sys.time(), 94 ---------------------------------

start_time <- Sys.time()
x <- runif(10^7)
end_time <- Sys.time()
end_time - start_time

## microbenchmark, 95 -----------------------------

#install.packages("microbenchmark")
require(microbenchmark)

## R Challenge, 96 --------------------------------

## ------------------------------------------------

## microbenchmark(), 99 ---------------------------

m <- matrix(rnorm(200*200), nrow = 200)
v <- runif(200)
benchmark <- microbenchmark(t(v * t(m)),
                            m %*% diag(v),
                            m * rep(v, each = nrow(m)),
                            m * rep(v, rep(nrow(m), length(v))))
autoplot(benchmark)
