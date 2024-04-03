setwd("L:/BUT/SD/Promo 2023/fbeck/r/dataset")
getwd()
bodies_karts = read.csv(file = "bodies_karts.csv", header = TRUE, sep = ";", dec = ",")
tires = read.csv(file = "tires.csv", header = TRUE, sep = "\t", dec = ",")
gliders = read.csv(file = "gliders.csv", header = TRUE, sep = "|", dec = ".")
drivers = read.csv(file = "drivers.csv", header = TRUE, sep = ";", dec = ",")
dim(bodies_karts)
dim(tires)
dim(gliders)
dim(drivers)
summary(bodies_karts)
summary(tires)
summary(gliders)
summary(drivers)
plot(x = drivers$Weight,
     y = drivers$Acceleration, 
     main = "Drivers : Weight / Acceleration")
#corélé à l'inverse et mm nb de points mais ils sont superposer
cor(x = drivers$Weight,
    y = drivers$Acceleration)
covXY = cov(x = drivers$Weight,
            y = drivers$Acceleration)
sX = sd(drivers$Weight)
sY = sd(drivers$Acceleration)
print(covXY / (sX*sY))
coefCorr = cor(x = drivers$Weight,
               y = drivers$Acceleration)
coefDeter = coefCorr^2
print(coefDeter)
matriceCor = cor(drivers[ , - 1])
matriceCor = round(matriceCor , 2)
View(matriceCor)
#corrélation >0.70 donc forte corrélation entre les variables
install.packages("corrplot")
library(corrplot) 
corrplot(matriceCor, method="circle")
matriceCor = round(cor(tires[ , - 1]),1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", # coef de corrélation
         tl.col="black", tl.srt=45, #rotation des étiquettes de textes
         # hide coef de corrélation sur diag
         diag=FALSE 
)
matriceCor = round(cor(bodies_karts[ , - 1]),1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", # coef de corrélation
         tl.col="black", tl.srt=45, #rotation des étiquettes de textes
         # hide coef de corrélation sur diag
         diag=FALSE 
)
matriceCor = round(cor(gliders[ , - 1]),1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", # coef de corrélation
         tl.col="black", tl.srt=45, #rotation des étiquettes de textes
         # hide coef de corrélation sur diag
         diag=FALSE 
)
resultat = drivers[ , c("Driver" , "Weight")]
View(resultat)
resultat = drivers[ 1:10 , c("Driver" , "Acceleration")]
View(resultat)
resultat = drivers[ , -c(5,7,9)]
View(resultat)
resultat = drivers[ , -c("Weight","Acceleration")]
resultat = drivers[ , -c(2,3)]
resultat = drivers[ , c("Driver", "Acceleration", "Weight")]
View(resultat)
#colonnes mm ordre vecteur.
resultat = drivers[ c(3,12,32) , ]
View(resultat)
resultat = drivers[ c(32,3,12) , ]
View(resultat)
#lignes mm ordre vecteur.
rang = order(drivers$Weight)
resultat = drivers[ rang  , c("Driver", "Weight") ]
View(resultat)
rang = order(drivers$Acceleration, decreasing = TRUE)
resultat = drivers[ rang  , c("Driver", "Acceleration") ]
View(resultat)
rang = order(drivers$Acceleration, drivers$Weight, decreasing = c(TRUE,FALSE))
resultat = drivers[ rang  , c("Driver", "Acceleration","Weight") ]
View(resultat)
help(subset)
topDriver = subset(x = drivers,
                   subset = Acceleration == max(Acceleration), 
                   select = c("Driver","Acceleration"))
topGlider = subset(x = gliders,
                   subset = Acceleration == max(Acceleration), 
                   select = c("Glider","Acceleration"))
topTires = subset(x = tires,
                  subset = Acceleration == max(Acceleration), 
                  select = c("Tire","Acceleration"))
topBody = subset(x = bodies_karts,
                 subset = Acceleration == max(Acceleration), 
                 select = c("Body","Acceleration"))
