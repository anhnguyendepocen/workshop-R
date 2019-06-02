## ----eval=FALSE----------------------------------------------------------
plot(log(subs), log(citeprice), data = Journals)
rug(log(Journals$subs))
rug(log(Journals$citeprice), side = 2)

## ----eval=FALSE----------------------------------------------------------
plot(log(citeprice) ~ log(subs), data = Journals, pch = 19,
     col = "blue", xlim = c(0, 8), ylim = c(-7, 4),
      main = "Library subscriptions")
rug(log(Journals$subs))
rug(log(Journals$citeprice), side=2)

## ----out.width='45%', fig.align="center"---------------------------------
curve(dnorm, from = -5, to = 5, col = "red", lwd = 3, 
      main = "Density of the standard normal distribution")

## ----eval=FALSE----------------------------------------------------------
library(ggplot2)
ggplot(data = mpg)
ggplot(mpg)

## ----comment = '', tidy=TRUE, message=FALSE, out.width='50%', fig.align="center"----
library(ggplot2)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

## ----comment = '', tidy=TRUE, message=FALSE, out.width='60%', fig.align="center"----
ggplot(data = mpg) +
  geom_point(aes(x = displ, y = hwy, 
                 color = class))

## ----eval=FALSE----------------------------------------------------------
ggplot(mpg) + geom_point(aes(x = displ, y = hwy, color = class))

## ----eval=FALSE----------------------------------------------------------
ggplot(mpg) + geom_point(aes(x = displ, y = hwy, color = "blue"))

## ----eval=FALSE----------------------------------------------------------
ggplot(mpg) + geom_point(aes(x = displ, y = hwy), color = "blue")

## ----eval=FALSE----------------------------------------------------------
ggplot(mpg) + geom_point(mapping = aes(x = class, y = hwy))

## ----eval=FALSE----------------------------------------------------------
ggplot(data = mpg) +
geom_boxplot(mapping = aes(x = class, y = hwy))

## ----eval=FALSE----------------------------------------------------------
ggplot(data = mpg) +
geom_histogram(mapping = aes(x = hwy))

## ----eval=FALSE----------------------------------------------------------
ggplot(data = mpg) +
geom_density(mapping = aes(x = hwy))

## ----eval=FALSE----------------------------------------------------------
ggplot(data = mpg) +
   geom_point(mapping = aes(x = displ, y = hwy)) +
   geom_smooth(mapping = aes(x = displ, y = hwy))

## ----message=FALSE, out.width='45%', fig.align="center"------------------
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth() + theme_bw()       # adjust theme 

## ----message=FALSE, out.width='45%', fig.align="center"------------------
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = drv)) +
  geom_smooth() + theme_bw()

## ----message=FALSE, out.width='45%', fig.align="center"------------------
library(dplyr)
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(data = filter(mpg, drv == "f")) + theme_bw()

