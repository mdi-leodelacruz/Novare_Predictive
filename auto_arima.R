# clear workspace
rm(list=ls())
gc()

# read the data / assume it is cleaned
overall_data <- read.csv("week.csv")


tot_ts <- ts(overall_data$cnt, frequency = 52, start = c(2010,12,27))

# plot time series
plot.ts(tot_ts)

library(forecast)
auto.arima(tot_ts, ic = "bic")

# ARIMA(1,0,0)(0,1,0)[52]
tot_aircraft_ts_arima <- arima(tot_passenger_ts, order = c(1,1,0))
tot_aircraft_ts_arima # arima forecasting model


