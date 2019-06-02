## ----install_ggplot, eval=FALSE, tidy=FALSE------------------------------
## install.packages("ggplot2")


## ----load_ggplot, eval=FALSE, tidy=FALSE---------------------------------
library(ggplot2)

## ----try_ggplot, eval=FALSE, tidy=FALSE----------------------------------
head(diamonds)
qplot(clarity, data = diamonds, fill = cut, geom = "bar")