install.packages("tidyverse")
library(ggplot2)

# Zad4-1
#Plik tekstowy Zadanie4-1.txt


# Zad4-2
#Narysuj wykres punktowy pokazuj�cy zale�no�� pojemno�ci silnika od spalania w mie�cie.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty)) + 
  labs(title = "Pojemno�� silnika a spalanie w ruchu miejskim", x = "Pojemno�� silnika ", y = "Spalanie w miescie")


# Zad4-3
#Narysuj wykres s�upkowy pokazuj�cy ilo�� samochod�w w poszczeg�lnych klasach w zbiorze. 
#Zr�b, �eby wykres by� �adny i kolorowy. Zadbaj o oznaczenia osi i tytu�.
ggplot(data = mpg) + 
  geom_bar(mapping = aes(x = class, fill = class))+
  labs(title = "Podzia� samochod�w na klasy", x = "Klasa smochod�w", y = "Ilo�� modeli")


# Zad4-4
#Narysuj histogram, pokazuj�cy rozk�ad pojemno�ci silnika samochod�w w zbiorze. 
#Dostosuj parametr bins tak, by histogram dobrze pokazywa� rozk�ad. 
#Zadbaj o oznaczenia osi i tytu�.
ggplot(data = mpg) + 
  geom_histogram(mapping = aes(displ), binwidth = 0.3)+
  labs(title = "Pojemno�� silnika", x = "Pojemno�� silnika", y = "Ilo�� modeli")


# Zad4-5
#Narysuj wykres ramka-w�sy pokazuj�cy zale�no�� pojemno�ci silnika od klasy samochodu. 
#Niech w�sy b�d� �poziomo� (odwrotnie ni� zazwyczaj). 
#Zadbaj o oznaczenia osi i tytu�.
ggplot(data = mpg, aes(x = displ, y = class)) +
  geom_boxplot() +
  coord_flip() +
  labs(title = "Pojemno�� silnika a klasa samochodu", x = "Pojemno�� silnika", y = "Klasa")

