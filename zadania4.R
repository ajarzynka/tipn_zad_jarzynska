install.packages("tidyverse")
library(ggplot2)

# Zad4-1
#Plik tekstowy Zadanie4-1.txt


# Zad4-2
#Narysuj wykres punktowy pokazuj¹cy zale¿noœæ pojemnoœci silnika od spalania w mieœcie.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty)) + 
  labs(title = "Pojemnoœæ silnika a spalanie w ruchu miejskim", x = "Pojemnoœæ silnika ", y = "Spalanie w miescie")


# Zad4-3
#Narysuj wykres s³upkowy pokazuj¹cy iloœæ samochodów w poszczególnych klasach w zbiorze. 
#Zrób, ¿eby wykres by³ ³adny i kolorowy. Zadbaj o oznaczenia osi i tytu³.
ggplot(data = mpg) + 
  geom_bar(mapping = aes(x = class, fill = class))+
  labs(title = "Podzia³ samochodów na klasy", x = "Klasa smochodów", y = "Iloœæ modeli")


# Zad4-4
#Narysuj histogram, pokazuj¹cy rozk³ad pojemnoœci silnika samochodów w zbiorze. 
#Dostosuj parametr bins tak, by histogram dobrze pokazywa³ rozk³ad. 
#Zadbaj o oznaczenia osi i tytu³.
ggplot(data = mpg) + 
  geom_histogram(mapping = aes(displ), binwidth = 0.3)+
  labs(title = "Pojemnoœæ silnika", x = "Pojemnoœæ silnika", y = "Iloœæ modeli")


# Zad4-5
#Narysuj wykres ramka-w¹sy pokazuj¹cy zale¿noœæ pojemnoœci silnika od klasy samochodu. 
#Niech w¹sy bêd¹ “poziomo” (odwrotnie ni¿ zazwyczaj). 
#Zadbaj o oznaczenia osi i tytu³.
ggplot(data = mpg, aes(x = displ, y = class)) +
  geom_boxplot() +
  coord_flip() +
  labs(title = "Pojemnoœæ silnika a klasa samochodu", x = "Pojemnoœæ silnika", y = "Klasa")

