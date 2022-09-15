dataset <- PrisonerDilemmaModel_model_data_iter_50_steps_600_2022_08_23_05_35_50_645017

hist(dataset$Lifecycle_Diff[dataset$penalty_mul!=1], breaks=100, main = "Diferença de vida média para todos experimentos", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Dispriviledged_Agents_Proportion[dataset$penalty_mul!=1], main = "Proporção final para todos experimentos", xlab = "Proporção final de agentes desprivilegiados (%)")
hist(dataset$Dispriviledged_Agents_Duration[dataset$penalty_mul!=1], main="Duração para todos experimentos", xlab = "Duração dos agentes desprivilegiados (steps)", ylab = "Frequência")

hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.00], main="0% de penalidade (controle)", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.00 & dataset$penalty_max==50], main="0% de penalidade (controle)", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.00 & dataset$penalty_max==100], main="0% de penalidade (controle)", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.00 & dataset$penalty_max==200], main="0% de penalidade (controle)", xlab = "Diferença de vida média (%)", ylab = "Frequência")

hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.05], main="5% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.05 & dataset$penalty_max==50], main="5% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.05 & dataset$penalty_max==100], main="5% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.05 & dataset$penalty_max==200], main="5% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")

hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.25], main="25% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.25 & dataset$penalty_max==50], main="25% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.25 & dataset$penalty_max==100], main="25% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.25 & dataset$penalty_max==200], main="25% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")

hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.5], main="50% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.5 & dataset$penalty_max==50], main="50% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.5 & dataset$penalty_max==100], main="50% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==1.5 & dataset$penalty_max==200], main="50% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")

hist(dataset$Lifecycle_Diff[dataset$penalty_mul==2.0], main="100% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==2.0 & dataset$penalty_max==50], main="100% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==2.0 & dataset$penalty_max==100], main="100% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_mul==2.0 & dataset$penalty_max==200], main="100% de penalidade", xlab = "Diferença de vida média (%)", ylab = "Frequência")

hist(dataset$Lifecycle_Diff[dataset$penalty_max==50 & dataset$penalty_mul!=1],breaks=100, main="Limite de score 50", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_max==100 & dataset$penalty_mul!=1],breaks=100, main="Limite de score 100", xlab = "Diferença de vida média (%)", ylab = "Frequência")
hist(dataset$Lifecycle_Diff[dataset$penalty_max==200 & dataset$penalty_mul!=1],breaks=100, main="Limite de score 200", xlab = "Diferença de vida média (%)", ylab = "Frequência")

hist(dataset$Dispriviledged_Agents_Duration[dataset$penalty_mul==1.00],xlim=c(0,600), main="0% de penalidade (controle)", xlab = "Duração dos agentes desprivilegiados (steps)", ylab = "Frequência")
hist(dataset$Dispriviledged_Agents_Duration[dataset$penalty_mul==1.05], main="5% de penalidade", xlab = "Duração dos agentes desprivilegiados (steps)", ylab = "Frequência")
hist(dataset$Dispriviledged_Agents_Duration[dataset$penalty_mul==1.05 & dataset$penalty_max!=200], breaks=15, main="5% de penalidade (sem limite de 200)", xlab = "Duração dos agentes desprivilegiados (steps)", ylab = "Frequência")
hist(dataset$Dispriviledged_Agents_Duration[dataset$penalty_mul==1.25], main="25% de penalidade", xlab = "Duração dos agentes desprivilegiados (steps)", ylab = "Frequência")
hist(dataset$Dispriviledged_Agents_Duration[dataset$penalty_mul==1.5], main="50% de penalidade", xlab = "Duração dos agentes desprivilegiados (steps)", ylab = "Frequência")
hist(dataset$Dispriviledged_Agents_Duration[dataset$penalty_mul==2.0], main="100% de penalidade", xlab = "Duração dos agentes desprivilegiados (steps)", ylab = "Frequência")

hist(dataset$Dispriviledged_Agents_Duration[dataset$penalty_max==50 & dataset$penalty_mul!=1], main="Limite de score 50", xlab = "Duração dos agentes desprivilegiados (steps)", ylab = "Frequência")
hist(dataset$Dispriviledged_Agents_Duration[dataset$penalty_max==100 & dataset$penalty_mul!=1], main="Limite de score 100", xlab = "Duração dos agentes desprivilegiados (steps)", ylab = "Frequência")
hist(dataset$Dispriviledged_Agents_Duration[dataset$penalty_max==200 & dataset$penalty_mul!=1], main="Limite de score 200", xlab = "Duração dos agentes desprivilegiados (steps)", ylab = "Frequência")
hist(dataset$Dispriviledged_Agents_Duration[dataset$penalty_max==200 & dataset$penalty_mul!=1 & dataset$penalty_mul!=1.05], main="Limite de score 200 (sem penalidade 5%)", xlab = "Duração dos agentes desprivilegiados (steps)", ylab = "Frequência")

hist(dataset$Dispriviledged_Agents_Proportion[dataset$penalty_mul==1.00],breaks=20,xlim=c(0,100), main = "0% de penalidade (controle)", xlab = "Proporção final de agentes desprivilegiados (%)")
hist(dataset$Dispriviledged_Agents_Proportion[dataset$penalty_mul==1.05 & dataset$Dispriviledged_Agents_Duration == 600],breaks=20,xlim=c(0,7), main = "5% de penalidade, simulações com agentes restantes", xlab = "Proporção final de agentes desprivilegiados (%)")
hist(dataset$Dispriviledged_Agents_Proportion[dataset$penalty_mul==1.25 | dataset$penalty_mul==1.5 | dataset$penalty_mul==2],xlim=c(0,10), main = "25%, 50%, 100% de penalidade", xlab = "Proporção final de agentes desprivilegiados (%)")

lm(dataset$penalty_mul ~ dataset$Lifecycle_Diff)
lm(dataset$penalty_mul ~ dataset$Dispriviledged_Agents_Proportion)
lm(dataset$penalty_mul ~ dataset$Dispriviledged_Agents_Duration)

lm(dataset$penalty_max ~ dataset$Lifecycle_Diff)
lm(dataset$penalty_max ~ dataset$Dispriviledged_Agents_Proportion)
lm(dataset$penalty_max ~ dataset$Dispriviledged_Agents_Duration)
