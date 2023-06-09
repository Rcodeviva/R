library(dplyr)
library(forecast)
library(fpp)
souvenir <- read.csv("souvenir.csv")
souvenir
souvenir_ts <- ts(souvenir, frequency = 12, start = c(1987, 1))
plot(souvenir_ts)
holt_fit <- HoltWinters(souvenir_ts)
holt_future <- forecast:::forecast.HoltWinters(holt_fit, h = 48)
plot(holt_future)
