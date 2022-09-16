dataset <- PrisonerDilemmaModel_model_data_iter_100_steps_1000_20220915190403103617

#----------------------------------- Multiplicador 5% ------------------------
par(mfrow=c(2,2))
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.05 & dataset$penalty_max==100 & dataset$coop==0], main="5% de penalidade\nLimite de score 100\nCompetição", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.05 & dataset$penalty_max==100 & dataset$coop==1], main="5% de penalidade\nLimite de score 100\nCooperação", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==1.05 & dataset$penalty_max==100 & dataset$coop==0], main="5% de penalidade\nLimite de score 100\nCompetição", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==1.05 & dataset$penalty_max==100 & dataset$coop==1], main="5% de penalidade\nLimite de score 100\nCooperação", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")

par(mfrow=c(2,2))
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.05 & dataset$penalty_max==100 & dataset$coop==0], main="5% de penalidade\nLimite de score 100\nCompetição", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.05 & dataset$penalty_max==100 & dataset$coop==1], main="5% de penalidade\nLimite de score 100\nCooperação", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")

hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.05 & dataset$penalty_max==100 & dataset$coop==0], main="5% de penalidade\nLimite de score 100\nCompetição", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.05 & dataset$penalty_max==100 & dataset$coop==1], main="5% de penalidade\nLimite de score 100\nCooperação", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")

par(mfrow=c(2,2))
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.05 & dataset$penalty_max==200 & dataset$coop==0], main="5% de penalidade\nLimite de score 200\nCompetição", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.05 & dataset$penalty_max==200 & dataset$coop==1], main="5% de penalidade\nLimite de score 200\nCooperação", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==1.05 & dataset$penalty_max==200 & dataset$coop==0], main="5% de penalidade\nLimite de score 200\nCompetição", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==1.05 & dataset$penalty_max==200 & dataset$coop==1], main="5% de penalidade\nLimite de score 200\nCooperação", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")

par(mfrow=c(2,2))
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.05 & dataset$penalty_max==200 & dataset$coop==0], main="5% de penalidade\nLimite de score 200\nCompetição", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.05 & dataset$penalty_max==200 & dataset$coop==1], main="5% de penalidade\nLimite de score 200\nCooperação", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")

hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.05 & dataset$penalty_max==200 & dataset$coop==0], main="5% de penalidade\nLimite de score 200\nCompetição", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.05 & dataset$penalty_max==200 & dataset$coop==1], main="5% de penalidade\nLimite de score 200\nCooperação", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")

#----------------------------------- Multiplicador 10% ------------------------
par(mfrow=c(2,2))
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.1 & dataset$penalty_max==100 & dataset$coop==0], main="10% de penalidade\nLimite de score 100\nCompetição", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.1 & dataset$penalty_max==100 & dataset$coop==1], main="10% de penalidade\nLimite de score 100\nCooperação", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==1.1 & dataset$penalty_max==100 & dataset$coop==0], main="10% de penalidade\nLimite de score 100\nCompetição", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==1.1 & dataset$penalty_max==100 & dataset$coop==1], main="10% de penalidade\nLimite de score 100\nCooperação", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")

par(mfrow=c(2,2))
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.1 & dataset$penalty_max==100 & dataset$coop==0], main="10% de penalidade\nLimite de score 100\nCompetição", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.1 & dataset$penalty_max==100 & dataset$coop==1], main="10% de penalidade\nLimite de score 100\nCooperação", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")

hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.1 & dataset$penalty_max==100 & dataset$coop==0], main="10% de penalidade\nLimite de score 100\nCompetição", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.1 & dataset$penalty_max==100 & dataset$coop==1], main="10% de penalidade\nLimite de score 100\nCooperação", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")

par(mfrow=c(2,2))
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.1 & dataset$penalty_max==200 & dataset$coop==0], main="10% de penalidade\nLimite de score 200\nCompetição", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.1 & dataset$penalty_max==200 & dataset$coop==1], main="10% de penalidade\nLimite de score 200\nCooperação", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==1.1 & dataset$penalty_max==200 & dataset$coop==0], main="10% de penalidade\nLimite de score 200\nCompetição", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==1.1 & dataset$penalty_max==200 & dataset$coop==1], main="10% de penalidade\nLimite de score 200\nCooperação", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")

par(mfrow=c(2,2))
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.1 & dataset$penalty_max==200 & dataset$coop==0], main="10% de penalidade\nLimite de score 200\nCompetição", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.1 & dataset$penalty_max==200 & dataset$coop==1], main="10% de penalidade\nLimite de score 200\nCooperação", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")

hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.1 & dataset$penalty_max==200 & dataset$coop==0], main="10% de penalidade\nLimite de score 200\nCompetição", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.1 & dataset$penalty_max==200 & dataset$coop==1], main="10% de penalidade\nLimite de score 200\nCooperação", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")

#----------------------------------- Multiplicador 25% ------------------------
par(mfrow=c(2,2))
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.25 & dataset$penalty_max==100 & dataset$coop==0], main="25% de penalidade\nLimite de score 100\nCompetição", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.25 & dataset$penalty_max==100 & dataset$coop==1], main="25% de penalidade\nLimite de score 100\nCooperação", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==1.25 & dataset$penalty_max==100 & dataset$coop==0], main="25% de penalidade\nLimite de score 100\nCompetição", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==1.25 & dataset$penalty_max==100 & dataset$coop==1], main="25% de penalidade\nLimite de score 100\nCooperação", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")

par(mfrow=c(2,2))
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.25 & dataset$penalty_max==100 & dataset$coop==0], main="25% de penalidade\nLimite de score 100\nCompetição", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.25 & dataset$penalty_max==100 & dataset$coop==1], main="25% de penalidade\nLimite de score 100\nCooperação", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")

hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.25 & dataset$penalty_max==100 & dataset$coop==0], main="25% de penalidade\nLimite de score 100\nCompetição", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.25 & dataset$penalty_max==100 & dataset$coop==1], main="25% de penalidade\nLimite de score 100\nCooperação", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")

par(mfrow=c(2,2))
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.25 & dataset$penalty_max==200 & dataset$coop==0], main="25% de penalidade\nLimite de score 200\nCompetição", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.25 & dataset$penalty_max==200 & dataset$coop==1], main="25% de penalidade\nLimite de score 200\nCooperação", xlab = "Diferença de vida média(%)", ylab = "Frequênc 100ia")
hist(dataset$Step[dataset$penalty_mul==1.25 & dataset$penalty_max==200 & dataset$coop==0], main="25% de penalidade\nLimite de score 200\nCompetição", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==1.25 & dataset$penalty_max==200 & dataset$coop==1], main="25% de penalidade\nLimite de score 200\nCooperação", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequênc 100ia")

par(mfrow=c(2,2))
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.25 & dataset$penalty_max==200 & dataset$coop==0], main="25% de penalidade\nLimite de score 200\nCompetição", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.25 & dataset$penalty_max==200 & dataset$coop==1], main="25% de penalidade\nLimite de score 200\nCooperação", xlab = "Vida média privilegiados(steps)", ylab = "Frequênc 100ia")

hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.25 & dataset$penalty_max==200 & dataset$coop==0], main="25% de penalidade\nLimite de score 200\nCompetição", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.25 & dataset$penalty_max==200 & dataset$coop==1], main="25% de penalidade\nLimite de score 200\nCooperação", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequênc 100ia")

#----------------------------------- Multiplicador 50% ------------------------
par(mfrow=c(2,2))
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.5 & dataset$penalty_max==100 & dataset$coop==0], main="50% de penalidade\nLimite de score 100\nCompetição", xlab = "Diferença de vida média(%)", ylab = "Frequênc 200ia")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.5 & dataset$penalty_max==100 & dataset$coop==1], main="50% de penalidade\nLimite de score 100\nCooperação", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==1.5 & dataset$penalty_max==100 & dataset$coop==0], main="50% de penalidade\nLimite de score 100\nCompetição", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequênc 200ia")
hist(dataset$Step[dataset$penalty_mul==1.5 & dataset$penalty_max==100 & dataset$coop==1], main="50% de penalidade\nLimite de score 100\nCooperação", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")

par(mfrow=c(2,2))
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.5 & dataset$penalty_max==100 & dataset$coop==0], main="50% de penalidade\nLimite de score 100\nCompetição", xlab = "Vida média privilegiados(steps)", ylab = "Frequênc 200ia")
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.5 & dataset$penalty_max==100 & dataset$coop==1], main="50% de penalidade\nLimite de score 100\nCooperação", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")

hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.5 & dataset$penalty_max==100 & dataset$coop==0], main="50% de penalidade\nLimite de score 100\nCompetição", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequênc 200ia")
hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.5 & dataset$penalty_max==100 & dataset$coop==1], main="50% de penalidade\nLimite de score 100\nCooperação", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")

par(mfrow=c(2,2))
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.5 & dataset$penalty_max==200 & dataset$coop==0], main="50% de penalidade\nLimite de score 200\nCompetição", xlab = "Diferença de vida média(%)", ylab = "Frequênc 100ia")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.5 & dataset$penalty_max==200 & dataset$coop==1], main="50% de penalidade\nLimite de score 200\nCooperação", xlab = "Diferença de vida média(%)", ylab = "Frequência 200")
hist(dataset$Step[dataset$penalty_mul==1.5 & dataset$penalty_max==200 & dataset$coop==0], main="50% de penalidade\nLimite de score 200\nCompetição", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequênc 100ia")
hist(dataset$Step[dataset$penalty_mul==1.5 & dataset$penalty_max==200 & dataset$coop==1], main="50% de penalidade\nLimite de score 200\nCooperação", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência 200")

par(mfrow=c(2,2))
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.5 & dataset$penalty_max==200 & dataset$coop==0], main="50% de penalidade\nLimite de score 200\nCompetição", xlab = "Vida média privilegiados(steps)", ylab = "Frequênc 100ia")
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==1.5 & dataset$penalty_max==200 & dataset$coop==1], main="50% de penalidade\nLimite de score 200\nCooperação", xlab = "Vida média privilegiados(steps)", ylab = "Frequência 200")

hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.5 & dataset$penalty_max==200 & dataset$coop==0], main="50% de penalidade\nLimite de score 200\nCompetição", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequênc 100ia")
hist(dataset$Avg_Disp_Age[dataset$penalty_mul==1.5 & dataset$penalty_max==200 & dataset$coop==1], main="50% de penalidade\nLimite de score 200\nCooperação", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência 200")

#----------------------------------- Multiplicador 100% ------------------------
par(mfrow=c(2,2))
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==2.0 & dataset$penalty_max==100 & dataset$coop==0], main="100% de penalidade\nLimite de score 100\nCompetição", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==2.0 & dataset$penalty_max==100 & dataset$coop==1], main="100% de penalidade\nLimite de score 100\nCooperação", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==2.0 & dataset$penalty_max==100 & dataset$coop==0], main="100% de penalidade\nLimite de score 100\nCompetição", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==2.0 & dataset$penalty_max==100 & dataset$coop==1], main="100% de penalidade\nLimite de score 100\nCooperação", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")

par(mfrow=c(2,2))
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==2.0 & dataset$penalty_max==100 & dataset$coop==0], main="100% de penalidade\nLimite de score 100\nCompetição", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==2.0 & dataset$penalty_max==100 & dataset$coop==1], main="100% de penalidade\nLimite de score 100\nCooperação", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")

hist(dataset$Avg_Disp_Age[dataset$penalty_mul==2.0 & dataset$penalty_max==100 & dataset$coop==0], main="100% de penalidade\nLimite de score 100\nCompetição", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Disp_Age[dataset$penalty_mul==2.0 & dataset$penalty_max==100 & dataset$coop==1], main="100% de penalidade\nLimite de score 100\nCooperação", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")

par(mfrow=c(2,2))
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==2.0 & dataset$penalty_max==200 & dataset$coop==0], main="100% de penalidade\nLimite de score 200\nCompetição", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==2.0 & dataset$penalty_max==200 & dataset$coop==1], main="100% de penalidade\nLimite de score 200\nCooperação", xlab = "Diferença de vida média(%)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==2.0 & dataset$penalty_max==200 & dataset$coop==0], main="100% de penalidade\nLimite de score 200\nCompetição", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Step[dataset$penalty_mul==2.0 & dataset$penalty_max==200 & dataset$coop==1], main="100% de penalidade\nLimite de score 200\nCooperação", xlab = "Extinção dos desprivilegiados(steps)", ylab = "Frequência")

par(mfrow=c(2,2))
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==2.0 & dataset$penalty_max==200 & dataset$coop==0], main="100% de penalidade\nLimite de score 200\nCompetição", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Priv_Age[dataset$penalty_mul==2.0 & dataset$penalty_max==200 & dataset$coop==1], main="100% de penalidade\nLimite de score 200\nCooperação", xlab = "Vida média privilegiados(steps)", ylab = "Frequência")

hist(dataset$Avg_Disp_Age[dataset$penalty_mul==2.0 & dataset$penalty_max==200 & dataset$coop==0], main="100% de penalidade\nLimite de score 200\nCompetição", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")
hist(dataset$Avg_Disp_Age[dataset$penalty_mul==2.0 & dataset$penalty_max==200 & dataset$coop==1], main="100% de penalidade\nLimite de score 200\nCooperação", xlab = "Vida média desprivilegiados(steps)", ylab = "Frequência")

# ---------------------------------- Testes Estatisticos -----------------------

sink(file = "r_output.txt")

t.test(dataset$Lifecycle_Diff[dataset$coop==0], dataset$Lifecycle_Diff[dataset$coop==1], alternative = c("greater"))
t.test(dataset$Lifecycle_Diff[dataset$coop==0], dataset$Lifecycle_Diff[dataset$coop==1], alternative = c("less"))
t.test(dataset$Avg_Priv_Age[dataset$coop==0], dataset$Avg_Priv_Age[dataset$coop==1], alternative = c("less"))
t.test(dataset$Avg_Disp_Age[dataset$coop==0], dataset$Avg_Disp_Age[dataset$coop==1], alternative = c("less"))
t.test(dataset$Step[dataset$coop==0], dataset$Step[dataset$coop==1], alternative = c("less"))

regLD <- lm(formula = Lifecycle_Diff ~ coop, data = dataset)
summary(regLD)

regAPA <- lm(formula = Avg_Priv_Age ~ coop, data = dataset)
summary(regAPA)

regADA <- lm(formula = Avg_Disp_Age ~ coop, data = dataset)
summary(regADA)

regS <- lm(formula = Step ~ coop, data = dataset)
summary(regS)

sink(file = NULL)
