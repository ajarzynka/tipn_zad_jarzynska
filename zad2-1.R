# zad 2_1_1
c("Styczeń", "Luty", "Marzec") -> kwartał_1 
c("Kwiecień", "Maj", "Czerwiec") -> kwartał_2 
c("Lipiec", "Sierpień", "Wrzesień") -> kwartał_3

c("Październik", "Listopad", "Grudzień")-> kwartał_4 

# zad 2_1_2
c(kwartał_1, kwartał_2, kwartał_3, kwartał_4) -> rok

# zad 2_1_3
rok [2]
rok [1:2]

# zad 2_1_4
rok [8:12]

# zad 2_1_5
rok [c(1, 3, 5, 7, 9, 11)]

# zad 2_1_6
nchar (rok)

# zad 2_1_7
mean (nchar (rok))
sd (nchar (rok))
# dla miesiecy zimowych
mean (nchar (kwartał_4))
sd (nchar (kwartał_4))

