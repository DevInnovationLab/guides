---
layout: default
title: Selected advanced topics
grand_parent: Research resources
parent: Power calculations
nav_order: 20
has_children: true
has_toc: true
type: explanation
audience: Anyone at DIL running power calculations who needs to go beyond the simple case - handling covariates, panel data, stratification, or multiple hypothesis testing
last_reviewed: 2026-07-30
---

## Some more advanced topics

<div class="ref-summary" markdown="1">
This section covers a few selected topics that are important for statistical power and experimental design: the inclusion of covariates, panel data (i.e. multiple observations per unit over time), stratification (sometimes called blocking), and multiple hypothesis testing (MHT) corrections.
</div>

<hr class="section-divider">

### Including covariates

The obvious way to improve power is to just brute-forcely increase the sample size.
A cheaper and more elegant way is to improve the regression model that is being estimated.
By including important predictors for $$Y$$, we will usually reduce the variance in the residuals, $$\varepsilon$$, and therefore increase the precision of our coefficient of interest - which generally will be the $$\beta_1$$ corresponding to a dummy variable for whether a unit/individual was treated or not - by lowering its standard error.
This means that we will require a lower sample size to achieve the same power as compared to an unconditional model.
<!-- Although, due to randomization, covariates are not used to partial out differences between treatment and control, they can be very useful in reducing the residual variance of the outcome variable, and subsequently leading to lower required sample sizes. -->

Power thus depends on the variability in the error term.
More variable outcomes $$Y$$ make it harder to detect the changes resulting from our treatment.
If we control for a set of variables that we think are likely to predict the outcome of interest, then we would typically analyze the data by running the regression:

$$Y_i = \beta_0 + \beta_1 D_i + X_i\gamma + u_i$$

Where $X$ is a set of controls that soak up some of the variation in $$Y$$.
Power is then going to depend on the variability of the error term $$u$$, which is less than the variability in $$\varepsilon$$ because we have explained some of the variation in the outcome.
Note, however, that controlling for variables that explain little or none of the variation in the outcome will increase standard errors by reducing degrees of freedom.

In a simple randomized experiment, controlling for baseline values of covariates does not affect the expected value of the estimated $$\hat{\beta_1}$$, but, as we said, it can reduce its variance.
Note that controlling for covariates affected by treatment $$D$$ would bias the estimate of $$\beta_1$$ by capturing part of its impact.
Information on covariates should therefore be collected in baseline surveys or, if possible, from other observational data that has been collected before the experiment.

<hr class="section-divider">

### Power calculations for panel data

When there is also a time dimension, McKenzie ([2012](#sources)) illustrated how one can increase statistical power by taking multiple measurements of the relevant outcomes at relatively short intervals.
He argues that stronger unit-specific shocks can erode the benefits of collecting additional waves of data.
What essentially increases power in this setting is the fact that noise in the outcome variable can be averaged out over multiple collection periods.
Burlig, Preonas, and Woerman ([2020](#sources)) extend his argument to within-unit serial correlation, demonstrating that higher autocorrelation in the idiosyncratic error term can similarly erode - and even reverse - the benefits of increased panel length.
Their result reflects the analytical properties of estimators that leverage both pre- and post-treatment data and does not reflect the DD estimator over-controlling for pre-period data. 
The implementation of these panel formulas (Burlig et al. also have simulations) is only available in Stata as of September 2023.

<hr class="section-divider">

### Stratification (blocking)

<!-- in the old resource on s-ICC we have simulation code -->

Stratification and pairing are intended to improve the efficiency of the design by disallowing assignments that are likely to be uninformative about the treatment effects of interest.
In a stratified randomized experiment, the covariate space is partitioned into a finite set of subsets - the strata (or blocks).
Within each of these subsets, a completely randomized experiment is carried out, after which the results are combined.
Stratification carried out properly will ensure that we do not end up in a situation where we have imbalances in baseline covariates.
This will also protect against type I errors.

<!-- @AtheyImbens2017 stress the general efficiency gains from stratification.
They recommend researchers to stratify the population into small strata and then randomize within the strata and adjust the standard errors to capture the gains from the stratification. -->
The blocking approach is preferred to model-based analyses applied after the randomization to adjust for differences in covariates.
The stronger the covariates are correlated with the outcome variable of interest, the more beneficial stratification will be.
The primary advantage is a precision gain by reducing the residual variance and therefore increasing power.
The average treatment effect in such a design is equal to the weighted average of the difference between treated and untreated units in each group - the weight being the number of observations in each group.

The regression specification when the randomization was carried out within stratum changes to:

$$Y_{ij} = \beta_0 + \beta_1 D_i + M_{ij}\gamma + v_j + \varepsilon_{ij},$$ 

where this is a fully saturated model with $$M$$ being a set of dummy variables indicating the respective stratum (or block) $$j$$ for every observation $$i$$.
You can think of these as fixed effects and we do not care about the set of unit-specific coefficients $$\gamma$$.
Importantly, we have to adjust the standard errors $$\varepsilon_{ij}$$ to allow for dependence within each stratum.
This amounts to choosing **cluster robust standard errors at the stratum level**.
If stratification was successful, the standard error of our coefficient of interest, $$\beta_1$$, will be smaller than if we had used the default robust standard errors.

Apart from reducing variance, an important reason to adopt a stratified design is when the researchers are interested in the effect of the program on specific subgroups.
If one is interested in the effect of the program on a subgroup, the experiment must have enough power for this subgroup (each subgroup constitutes in some sense a distinct experiment).
Stratification according to those subgroups then ensures that the ratio between treatment and control units is determined by the experimenter in each subgroup, and can therefore be chosen optimally.
<!-- See @KernanViscoliMakuchBrassHorwitz1999 for a classic reference for stratification in randomized trials.  -->
In R we can e.g. use `blockTools` or `randomizr` to carry out stratification. In Stata this is usually done via `egen strata=group()`.

<hr class="section-divider">

### Multiple hypothesis testing (MHT)

In practice, most RCTs test more than one null hypothesis.
For example, we might have constructed multiple treatment arms, are interested in heterogeneous treatment effects, or want to test a treatment effect on multiple outcome variables.
From the way we defined null hypothesis testing above, it is easy to see that the more hypotheses we test, the more false rejections - i.e. false positives - we are going to get.
To account for the multiplicity of testing, we can aim to control either the family-wise error rate (FWER), or the false-discovery rate (FDR).
These adjustments reduce the likelihood of spurious findings but also change the statistical power, which reduces the probability of detecting effects when they do exist.

Controlling the FWER, which is the probability of making at least one false rejection among all tests, is the more straightforward, but usually also the more conservative approach.
If we test $$m$$ times, the probability of making a type I error gets inflated to $$1-(1-\alpha)^m$$.
To bring it back to our desired level, usually 0.05, we simply divide $$\alpha$$ by the number of hypothesis tests $$m$$ and reject only null hypotheses that are below this adjusted threshold. This is the well-known Bonferroni correction. The procedure by Holm also controls the FWER but is slightly more complex.

The FDR instead controls the number of false rejections out of the total number of rejections.
We define a q-value (the level at which to control the FDR), then order all the p-values ($$p_1 < ... < p_m$$), define $$L = max\{j: p_j < qj/m \}$$, and, finally, reject all null hypotheses for which $$p_j \leq p_L$$.
This is the famous procedure by Benjamini and Hochberg.

In practice, we can use the function `p.adjust()` in R to do all of these corrections. An overview of commands in Stata for MHT can be found [on the Worldbank blog](https://blogs.worldbank.org/impactevaluations/overview-multiple-hypothesis-testing-commands-stata).
If feasible, a more accurate way to account for multiple testing in power calculations is through simulation. The main reason is that it allows us to address the extent to which the multiple comparisons are correlated with one another and thus delivers less conservative thresholds for rejection.

> Suppose a project pre-specifies $$m = 5$$ outcome variables and tests each at the conventional $$\alpha = 0.05$$ level, without any multiple testing correction.
{: .example}

What is the actual probability of at least one false rejection across the five tests, and what would the Bonferroni-adjusted threshold be for each individual test?

<details markdown="1">
<summary>Work it out, then expand</summary>

Without correction, the family-wise error rate is $$1-(1-\alpha)^m = 1-(1-0.05)^5 \approx 0.226$$ - close to a 1-in-4 chance of at least one false positive, well above the nominal 5% most readers would assume from the reported significance level.

The Bonferroni correction brings this back down by dividing $$\alpha$$ by the number of tests: $$0.05 / 5 = 0.01$$. Each of the five hypotheses is only rejected if its p-value falls below 0.01, not 0.05.

This is also where the tradeoff shows up: as $$m$$ grows, the per-test threshold shrinks quickly, which is exactly why the correction reduces power along with the false positive rate. It is also why, when feasible, a simulation-based approach that accounts for correlation across outcomes can deliver a less conservative - and still valid - threshold.
</details>

<hr class="section-divider">

## Sources

McKenzie, David. 2012. ["Beyond baseline and follow-up: The case for more T in experiments."](https://doi.org/10.1016/j.jdeveco.2012.01.002) *Journal of Development Economics* 99 (2): 210-221.

Burlig, Fiona, Louis Preonas, and Matt Woerman. 2020. ["Panel data and experimental design."](https://doi.org/10.1016/j.jdeveco.2020.102458) *Journal of Development Economics* 144: 102458.
