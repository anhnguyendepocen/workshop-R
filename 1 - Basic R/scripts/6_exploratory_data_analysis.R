## ----echo=FALSE, include=FALSE-------------------------------------------
getwd()
CPS1985 <- read.table("./data/CPS1985.txt", header = TRUE)

## ------------------------------------------------------------------------
summary(CPS1985$wage)         # get a summary
is.numeric(CPS1985$wage)      # check if variable is numeric
mean(CPS1985$wage)            # get mean
var(CPS1985$wage)             # get variance

## ----out.width='45%', fig.align="center"---------------------------------
hist(log(CPS1985$wage), freq = FALSE, nclass = 20, col = "light blue")
lines(density(log(CPS1985$wage)), col = "red")

## ----comment = ''--------------------------------------------------------
summary(CPS1985$occupation)

## ----comment = ''--------------------------------------------------------
levels(CPS1985$occupation)[c(2, 6)] <- c("techn", "mgmt")
summary(CPS1985$occupation)

## ----eval=FALSE----------------------------------------------------------
tab <- table(CPS1985$occupation)
prop.table(tab)
barplot(tab)
pie(tab, col = gray(seq(0.4, 1.0, length = 6)))

## ----comment = ''--------------------------------------------------------
attach(CPS1985)                 # attach the data set to avoid use of $ 
table(gender, occupation)       # no name_df$name_var necessary
prop.table(table(gender, occupation))
detach(CPS1985)                 # now detach when work is done

## ----out.width='45%', fig.align="center"---------------------------------
plot(gender ~ occupation, data = CPS1985)

## ----echo=FALSE, include=FALSE-------------------------------------------
attach(CPS1985)

## ------------------------------------------------------------------------
tapply(wage, gender, mean)
tapply(log(wage), list(gender, occupation), mean)

## ----echo=FALSE----------------------------------------------------------
detach(CPS1985)

## ----out.width='45%', fig.align="center"---------------------------------
boxplot(log(wage) ~ gender, data = CPS1985)

## ----out.width='75%', fig.align="center"---------------------------------
boxplot(log(wage) ~ gender + occupation, data = CPS1985)
