#https://github.com/asardell/IUT_SD1/blob/main/TD1.md#exercice-1---les-objets-et-les-vecteurs
#exo 1
a=10
b=5
resultat=a*b
print(resultat)
A=7.2
B=10.1
resultat=A+B
rm(a,b,A,B,resultat)

#exo 2
a=c(1,2,3,4,5)
class(a)
a[3]
v1=1:5
v2=v1+3
v3=1:6
v4=v3^2
v5=v4/2
jours=c("lundi","mardi","mercredi","jeudi","vendredi","samedi","dimanche")
class(jours)
jours[c(2,7)]
vecteur <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
class(vecteur)
vecteur <- c(1.2, 2.5, 3.8, 4.1, 5.6)
class(vecteur)
vecteur[-3]
vecteur <- c("Janvier", "Février", "Mars", "Avril", "Mai", "Juin", "Juillet", "Août", "Septembre", "Octobre", "Novembre", "Décembre")
class(vecteur)
vecteur[c(1,2,3)]
vecteur <- c(-1, -2, -3, -4, -5)
class(vecteur)
vecteur[c(5,1)]
vecteur <- c("Pomme", "Banane", "Orange", "Fraise", "Ananas")
class(vecteur)
vecteur[-c(1,2)]
vecteur <- c(1, 2, NA, 4, 5)
class(vecteur)
ma_sequence <- seq(from = 1, to = 10)
length(ma_sequence)
ma_sequence <- seq(from = 0, to = -5)
length(ma_sequence)
ma_sequence <- seq(from = 5, to = 50, by = 5)
length(ma_sequence)
ma_sequence <- seq(from = 10, to = 1, by = -1)
length(ma_sequence)
ma_sequence <- seq(from = 0, to = 1, by = 0.1)
length(ma_sequence)
ma_sequence <- seq(from = 5, to = -5, by = -1)
length(ma_sequence)
ma_sequence <- seq(from = 1, to = 10, by = 2)
length(ma_sequence)
