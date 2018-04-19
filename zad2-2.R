dzień <- 24
miesiac <- 30 * dzień
rok <- 365 * dzień
dziś <- c(21, 5, 4, 2018)
koniec <- c(12, 30, 6, 2021)
hdziś <- dziś[1]+dziś[2]*dzień+dziś[3]*miesiac+dziś[4]*rok
hkoniec <- koniec[1]+koniec[2]*dzień+koniec[3]*miesiac+koniec[4]*rok
roznica <- hkoniec - hdziś
