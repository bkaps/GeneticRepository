Telomni2 <- Telomni

O1Cond1 <- Telomni2$O1_Event == 1
O1Cond2 <- Telomni2$O1_Event == 5
O1ProperSubset <- O1Cond1 | O1Cond2
Telomni2RegressionAnalysis <- Telomni2[O1ProperSubset,]
table(Telomni2RegressionAnalysis$O1_Event)
Telomni2RegressionAnalysis$O1_Event[Telomni2RegressionAnalysis$O1_Event == 1] <- 0
Telomni2RegressionAnalysis$O1_Event[Telomni2RegressionAnalysis$O1_Event == 5] <- 1
table(Telomni2RegressionAnalysis$O1_Event)

ptsdCond1 <- Telomni2RegressionAnalysis$ptsd == 2
ptsdCond2 <- Telomni2RegressionAnalysis$ptsd == 1
ptsdProperSubset <- ptsdCond1 | ptsdCond2
Telomni2RegressionAnalysis <- Telomni2RegressionAnalysis[ptsdProperSubset,]
table(Telomni2RegressionAnalysis$ptsd)
Telomni2RegressionAnalysis$ptsd[Telomni2RegressionAnalysis$ptsd == 1] <- 0
Telomni2RegressionAnalysis$ptsd[Telomni2RegressionAnalysis$ptsd == 2] <- 1
table(Telomni2RegressionAnalysis$ptsd)

Z3Cond1 <- Telomni2RegressionAnalysis$Z3_WitnessViol == 5
Z3Cond2 <- Telomni2RegressionAnalysis$Z3_WitnessViol < 5
Z3ProperSubset <- Z3Cond1 | Z3Cond2
Telomni2RegressionAnalysis <- Telomni2RegressionAnalysis[Z3ProperSubset,]
table(Telomni2RegressionAnalysis$Z3_WitnessViol)
Telomni2RegressionAnalysis$Z3_WitnessViol[Telomni2RegressionAnalysis$Z3_WitnessViol == 1] <- 0
Telomni2RegressionAnalysis$Z3_WitnessViol[Telomni2RegressionAnalysis$Z3_WitnessViol == 5] <- 1
table(Telomni2RegressionAnalysis$Z3_WitnessViol)

Z4ACond1 <- Telomni2RegressionAnalysis$Z4A_AbuseSex == 5
Z4ACond2 <- Telomni2RegressionAnalysis$Z4A_AbuseSex < 5
Z4AProperSubset <- Z4ACond1 | Z4ACond2
Telomni2RegressionAnalysis <- Telomni2RegressionAnalysis[Z4AProperSubset,]
table(Telomni2RegressionAnalysis$Z4A_AbuseSex)
Telomni2RegressionAnalysis$Z4A_AbuseSex[Telomni2RegressionAnalysis$Z4A_AbuseSex == 1] <- 0
Telomni2RegressionAnalysis$Z4A_AbuseSex[Telomni2RegressionAnalysis$Z4A_AbuseSex == 5] <- 1
table(Telomni2RegressionAnalysis$Z4A_AbuseSex)

Z4BCond1 <- Telomni2RegressionAnalysis$Z4B_AbuseMedCare == 5
Z4BCond2 <- Telomni2RegressionAnalysis$Z4B_AbuseMedCare < 5
Z4BProperSubset <- Z4BCond1 | Z4BCond2
Telomni2RegressionAnalysis <- Telomni2RegressionAnalysis[Z4BProperSubset,]
table(Telomni2RegressionAnalysis$Z4B_AbuseMedCare)
Telomni2RegressionAnalysis$Z4B_AbuseMedCare[Telomni2RegressionAnalysis$Z4B_AbuseMedCare == 1] <- 0
Telomni2RegressionAnalysis$Z4B_AbuseMedCare[Telomni2RegressionAnalysis$Z4B_AbuseMedCare== 5] <- 1
table(Telomni2RegressionAnalysis$Z4B_AbuseMedCare)

Telomni2RegressionAnalysis$ZMeta <- Telomni2RegressionAnalysis$Z3_WitnessViol + Telomni2RegressionAnalysis$Z4A_AbuseSex + Telomni2RegressionAnalysis$Z4B_AbuseMedCare
table(Telomni2RegressionAnalysis$ZMeta)

rs9470080regression <- lm( rs9470080 ~ ptsd + A4_AGE + A1_SEX + alcdepedit + cocdepedit + opidepedit + tobdepedit, data = Telomni2RegressionAnalysis)
summary(rs9470080regression)
