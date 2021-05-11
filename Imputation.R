
#Missing value imputation
library(readr)

climates<-read.csv("C:\\Users\\hp\\Desktop\\DataSets\\claimants.csv")

attach(climates)

sum(is.na(climates$CASENUM))
sum(is.na(climates$ATTORNEY))
sum(is.na(climates$CLMSEX))
sum(is.na(climates$CLMINSUR))
sum(is.na(climates$SEATBELT))
sum(is.na(climates$CLMAGE))
sum(is.na(climates$LOSS))

#we have missing values in CLMSEX,CLMINSUR,SEATBELT,CLMAGE
#Imputation will be done through mean values as all are continuous variables
#We can also omit missing values but in this case data will be loss

#Mean imputation
climates$CLMSEX[is.na(climates$CLMSEX)] <- mean(climates$CLMSEX, na.rm = TRUE)
climates$CLMINSUR[is.na(climates$CLMINSUR)] <- mean(climates$CLMINSUR, na.rm = TRUE)
climates$SEATBELT[is.na(climates$SEATBELT)] <- mean(climates$SEATBELT, na.rm = TRUE)
climates$CLMAGE[is.na(climates$CLMAGE)] <- mean(climates$CLMAGE, na.rm = TRUE)

sum(is.na(climates))


