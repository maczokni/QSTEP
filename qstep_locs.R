library(readxl)
qstep_kids <- read_excel(file.choose())
View(qstep_kids)

qstep_kids$Location <- ifelse(qstep_kids$Location=="London or Sheffield", "Sheffield", qstep_kids$Location)\
qstep_kids$Location <- ifelse(qstep_kids$Location=="East Kilbride", "South Lanarkshire", qstep_kids$Location)

london_df <- data.frame("Var1" = c("Barking and Dagenham",
                                   "Barnet",
                                   "Bexley",
                                   "Brent",
                                   "Bromley",
                                   "Camden",
                                   "Croydon",
                                   "Ealing",
                                   "Enfield",
                                   "Greenwich",
                                   "Hackney",
                                   "Hammersmith and Fulham",
                                   'Haringey',
                                   "Harrow",
                                   "Havering",
                                   "Hillingdon",
                                   "Hounslow",
                                   "Islington",
                                   "Kensington and Chelsea",
                                   "Kingston upon Thames",
                                   "Lambeth",
                                   "Lewisham",
                                   "Merton",
                                   "Newham",
                                   "Redbridge",
                                   "Richmond upon Thames",
                                   "Southwark",
                                   "Sutton",
                                   "Tower Hamlets",
                                   "Waltham Forest",
                                   "Wandsworth",
                                   "Westminster"), 
                        "Freq"= c(rep(22,32)))

thing <- as.data.frame(table(qstep_kids$Location))

thing2 <- rbind(thing, london_df)

write.csv(thing2, file="qstep_locs.csv")
View(thing2)

