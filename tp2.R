#exo 1
setwd("L:/BUT/SD/Promo 2023/fbeck/r/dataset")
fao = read.csv("fao.csv",header=TRUE,sep=";",dec=",")
dim(fao)[1]
summary(fao)
#exo 2
mean(fao$Dispo_alim)
sum(fao$Population,na.rm = TRUE)
sd(fao$Import_viande,na.rm=TRUE)
median(fao$Prod_viande,na.rm=TRUE)
quantile(fao$Dispo_alim)
quantile(fao$Import_viande, probs=seq(0,1,0.1))
#exo 3
rang = order(fao$Population) 
resultat = fao[ rang  ,  ] 
View(head(resultat,5))
rang = order(fao$Population,decreasing = TRUE)
resultat = fao[ rang  ,  ] 
View(head(resultat,5))
rang = order(fao$Prod_viande,decreasing = TRUE)
resultat = fao[ rang  ,  ] 
View(head(resultat,5))
