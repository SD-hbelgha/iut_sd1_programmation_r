#https://github.com/asardell/IUT_SD1/blob/main/TD1.md#exercice-1---les-objets-et-les-vecteurs
#exo1
data(iris)
iris
class(iris)
View(iris)
nrow(iris)
ncol(iris)
colnames(iris)
summary(iris)
iris[ , c("Sepal.Length","Species")]
iris[c(100,103,105),]
iris[c(seq(50,100)),]
mean(iris[,"Sepal.Length"])
median(iris[,"Sepal.Length"])
sd(iris[,"Petal.Length"])
quantile(iris$Petal.Width, probs = seq(from = 0.1, to = 0.9, by =0.1))
#exo2
dfManga <- read.csv("L:/BUT/SD/Promo 2023/fbeck/r/manga.csv", header = TRUE, sep = ",", dec = ".")
dfAnime <- read.csv("L:/BUT/SD/Promo 2023/fbeck/r/anime.csv", header = TRUE, sep = ",", dec = ".")
class(dfManga)
class(dfAnime)
View(dfManga)
View(dfAnime)
dim(dfManga)
dim(dfAnime)
mean(dfManga[,"Score"])
mean(dfAnime$Score)
sum(dfManga$Vote)
sum(dfAnime$Vote)
sd(dfManga$Score)
sd(dfAnime$Score)
quantile(dfManga$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))
quantile(dfAnime$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))
extraction1 <- subset(dfManga, Score > 9)
nrow(extraction1)
extraction2 <- subset(dfManga, Vote >= 200000)
nrow(extraction2)
extraction3 <- subset(dfManga, Vote >= 200000 & Score >= 8)
nrow(extraction3)

