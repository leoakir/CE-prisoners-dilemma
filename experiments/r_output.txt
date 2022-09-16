
	Welch Two Sample t-test

data:  dataset$Lifecycle_Diff[dataset$coop == 0] and dataset$Lifecycle_Diff[dataset$coop == 1]
t = -7.7777, df = 1990.7, p-value = 1
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
 -5.693102       Inf
sample estimates:
mean of x mean of y
 18.13399  22.83289


	Welch Two Sample t-test

data:  dataset$Lifecycle_Diff[dataset$coop == 0] and dataset$Lifecycle_Diff[dataset$coop == 1]
t = -7.7777, df = 1990.7, p-value = 5.879e-15
alternative hypothesis: true difference in means is less than 0
95 percent confidence interval:
      -Inf -3.704708
sample estimates:
mean of x mean of y
 18.13399  22.83289


	Welch Two Sample t-test

data:  dataset$Avg_Priv_Age[dataset$coop == 0] and dataset$Avg_Priv_Age[dataset$coop == 1]
t = -12.167, df = 1876.7, p-value < 2.2e-16
alternative hypothesis: true difference in means is less than 0
95 percent confidence interval:
      -Inf -1.635006
sample estimates:
mean of x mean of y
 10.05589  11.94663


	Welch Two Sample t-test

data:  dataset$Avg_Disp_Age[dataset$coop == 0] and dataset$Avg_Disp_Age[dataset$coop == 1]
t = -6.7725, df = 1945.2, p-value = 8.355e-12
alternative hypothesis: true difference in means is less than 0
95 percent confidence interval:
       -Inf -0.7042346
sample estimates:
mean of x mean of y
 8.212535  9.142818


	Welch Two Sample t-test

data:  dataset$Step[dataset$coop == 0] and dataset$Step[dataset$coop == 1]
t = -18.703, df = 1130.3, p-value < 2.2e-16
alternative hypothesis: true difference in means is less than 0
95 percent confidence interval:
      -Inf -158.3093
sample estimates:
mean of x mean of y
  126.380   299.968


Call:
lm(formula = Lifecycle_Diff ~ coop, data = dataset)

Residuals:
    Min      1Q  Median      3Q     Max
-17.032 -11.359  -5.449  10.412  25.776

Coefficients:
            Estimate Std. Error t value Pr(>|t|)
(Intercept)  18.1340     0.4272  42.449  < 2e-16 ***
coopTRUE      4.6989     0.6041   7.778 1.17e-14 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 13.51 on 1998 degrees of freedom
Multiple R-squared:  0.02939,	Adjusted R-squared:  0.0289
F-statistic: 60.49 on 1 and 1998 DF,  p-value: 1.174e-14


Call:
lm(formula = Avg_Priv_Age ~ coop, data = dataset)

Residuals:
    Min      1Q  Median      3Q     Max
-3.9641 -3.2298  0.0169  3.2020  4.0485

Coefficients:
            Estimate Std. Error t value Pr(>|t|)
(Intercept)  10.0559     0.1099   91.51   <2e-16 ***
coopTRUE      1.8907     0.1554   12.17   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.475 on 1998 degrees of freedom
Multiple R-squared:  0.06898,	Adjusted R-squared:  0.06851
F-statistic:   148 on 1 and 1998 DF,  p-value: < 2.2e-16


Call:
lm(formula = Avg_Disp_Age ~ coop, data = dataset)

Residuals:
   Min     1Q Median     3Q    Max
-4.462 -2.074 -1.317  3.181  5.870

Coefficients:
            Estimate Std. Error t value Pr(>|t|)
(Intercept)  8.21254    0.09713  84.553  < 2e-16 ***
coopTRUE     0.93028    0.13736   6.772 1.66e-11 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.072 on 1998 degrees of freedom
Multiple R-squared:  0.02244,	Adjusted R-squared:  0.02195
F-statistic: 45.87 on 1 and 1998 DF,  p-value: 1.659e-11


Call:
lm(formula = Step ~ coop, data = dataset)

Residuals:
    Min      1Q  Median      3Q     Max
-270.97 -114.22  -33.38   52.62  700.03

Coefficients:
            Estimate Std. Error t value Pr(>|t|)
(Intercept)  126.380      6.563   19.26   <2e-16 ***
coopTRUE     173.588      9.281   18.70   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 207.5 on 1998 degrees of freedom
Multiple R-squared:  0.149,	Adjusted R-squared:  0.1486
F-statistic: 349.8 on 1 and 1998 DF,  p-value: < 2.2e-16
