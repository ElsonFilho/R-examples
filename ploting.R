# Exploratory

## Base Plot system
library(datasets)
data(cars)
with(cars, plot (speed, dist))


## Lattice system
library(lattice)
state <- data.frame(state.x77, region= state.region)
xyplot(Life.Exp ~ Income | region, data = state, layout = c(4,1))


## ggplot2 system
library(ggplot2)
data(mpg)
qplot(displ, hwy, data= mpg)



## BASE PLOT SYSTEM
hist(airquality$Ozone)

with(airquality, plot(Wind, Ozone))
title(main = "Ozone and Wind in New York City") ## Add a title

airquality <- transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "Month", ylab = "Ozone (ppb)")


with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City",
                      type = "n")) ## setup but do not plot
with(subset(airquality, Month == 5), points(Wind, Ozone, col = "blue"))
with(subset(airquality, Month != 5), points(Wind, Ozone, col = "red"))
legend("topright", pch = 1, col = c("blue", "red"), legend = c("May", "Other Months"))



with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City",
                      pch = 20))
model <- lm(Ozone ~ Wind, airquality)
abline(model, lwd = 2, col="blue")



par(mfrow = c(1, 2))
with(airquality, {
      plot(Wind, Ozone, main = "Ozone and Wind")
      plot(Solar.R, Ozone, main = "Ozone and Solar Radiation")
})




par(mfrow = c(1, 3), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
with(airquality, {
      plot(Wind, Ozone, main = "Ozone and Wind")
      plot(Solar.R, Ozone, main = "Ozone and Solar Radiation")
      plot(Temp, Ozone, main = "Ozone and Temperature")
      mtext("Ozone and Weather in New York City", outer = TRUE)
})
par(mfrow = c(1,1))
example(points)





## ggplot2 system
library(ggplot2)

# qplot - simplifies ggplot2 
data(mpg)
qplot(displ, hwy, data= mpg, color=drv)
qplot(displ, hwy, data= mpg, geom=c("point", "smooth"))
qplot(hwy, data= mpg, fill=drv) ## Histogram

# Facets
qplot(displ, hwy, data=mpg, facets=.~ drv)

qplot(hwy, data = mpg, facets = drv ~ ., binwidth=3)