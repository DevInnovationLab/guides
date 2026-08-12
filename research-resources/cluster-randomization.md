---
layout: default
title: Cluster randomization
grand_parent: Research resources
parent: Power calculations
nav_order: 12
type: reference
audience: Anyone at DIL running a power calculation for a design where treatment is assigned at the group level (village, clinic, classroom, ...) rather than the individual level
last_reviewed: 2026-07-30
---

## Cluster/Group Level Randomization

<div class="ref-summary" markdown="1">
This page explains why assigning treatment at the group (cluster) level rather than the individual level changes a power calculation, and gives the adjusted sample-size formulas for continuous and binary outcomes.
</div>

<hr class="section-divider">

## Why clustering changes the calculation

Individual randomization is typically preferred because of its statistical properties.
Often it is not feasible, though, so we are forced to allocate treatment at a higher level of aggregation.
Cluster randomized experiments allocate treatments to groups, but measure outcomes at the level of the individuals that compose the groups.

The estimating equation therefore changes to:

$$Y_{ij} = \beta_0 + \beta_1 D_j + v_j + \varepsilon_{ij},$$ 

where $$j$$ now denotes the cluster at which the treatment gets assigned (e.g. a village, health facility, classroom, ...).
Note that $$v_j$$ is an error term at the cluster level.
The two variances are given by $$var(v_j) = \sigma^2_c$$ and $$var(\varepsilon_{ij}) = \sigma^2_p$$.
These represent the variation of the outcome $$Y$$ at two different levels, group and individual (index $$p$$ stands for "personal" since $$i$$ is already in use).
Combining them we get $$\sigma^2_c + \sigma^2_p = \sigma^2$$.

For cluster studies we need to come up with a measure that determines the proportion of the total variance accounted for by the between cluster variance component, i.e. how much of the variance is explained by the clusters alone.
This so-called Intra-cluster Correlation Coefficient (ICC) gives us a measure of how similar units within each clusters are.
It has to be taken either from a large pilot, prior studies, or, in fortunate situations from large scale administrative or survey data.
Quite often coming up with reliable estimates for the ICC can be very challenging because large sample sizes are needed.
Since it can have huge effects on required sample sizes - especially when the cluster size is large - it is often worth performing power calculations with a variety of ICC levels to get a range of required sample sizes. [See the DIL article on ICC for further details].
The ICC is a summary statistic that is defined as:

$$\rho = \frac{\sigma^2_c}{\sigma^2_c + \sigma^2_p}.$$

The general implication of ICC for power calculations is that every additional individual adds less power the higher the ICC is.
A large ICC means there is a high degree of similarity of units within each cluster.
As a consequence, less information is added by each individual.
Adapting the formula involves some tedious algebra, but is generally straightforward.

<hr class="section-divider">

## Start with a scenario

> Two studies plan to detect the same effect size, with the same total number of respondents $$n$$. Study A assigns individuals to treatment or control one at a time. Study B assigns whole villages, each with $$m$$ households, to treatment or control.
>
> A team member argues that because both studies collect data from the same number of respondents, they should end up with the same statistical power.
{: .example}

Is the team member right?

<details markdown="1">
<summary>Think it through, then expand</summary>

No, and the ICC is why. In Study B, households in the same village share the cluster-level error term $$v_j$$, so a high ICC means households within a village look similar to each other. Adding another household from a village already in the sample contributes less new information than adding a household from a new village would.

The gap between the two studies is exactly the **design effect** (or variance inflation factor), $$(1 + (m-1)\rho)$$, that appears in both formulas below. When $$\rho = 0$$, the design effect is 1 and the cluster formulas collapse to the individual-randomization formulas (setting cluster size to 1 makes this explicit). When $$\rho > 0$$, Study B needs a larger $$n$$ than Study A to reach the same power, and the gap grows with both $$\rho$$ and the cluster size $$m$$.
</details>

<hr class="section-divider">

## Adjusted formulas

### Continuous

The MDE changes to:

$$\delta = \left(t_\beta + t_{\frac{\alpha}{2}}\right) 2 \biggl( \frac{m \sigma^2_c + \sigma^2_p}{m k} \biggr),$$

where there are $$m$$ individuals in every cluster and the total number of clusters is $$k$$.
It is straightforward to adjust these calculations to allow for varying clustersizes.
Usually this is done by providing the coefficient of variation in clustersize across all clusters.
A large difference in clustersize generally decreases power, or, keeping power constant, increases the needed sample size to detect an effect.

In a similar fashion, the required sample size per treatment arm - assuming equal allocation - $$n^* = m^* \ k^*$$ becomes:

$$n^* = 2\left(t_\beta + t_{\frac{\alpha}{2}}\right)^2\frac{\sigma^2}{\delta^2} \ (1 + (m-1) \rho).$$

### Binary

For simplicity we abstract from differences in cluster sizes here again, but accommodating this in the formulas is quite straightforward (a high variation would further reduce power).

$$ N^{*}=\left(\frac{p_{1}\left(1-p_{1}\right)}{\pi}+\frac{p_{0}\left(1-p_{0}\right)}{1-\pi}\right) \frac{\left(z_{\beta}+z_{\alpha / 2}\right)^{2}}{\left(p_{1}-p_{0}\right)^{2}} \ (1 + (m-1) \rho).$$

Comparing this with the formulas for individual randomization from above, note that the only difference is the so-called **design effect**, sometimes called the variance inflation factor (VIF).
It is easy to see that the cluster randomization formulas nest the individual formulas (by setting the cluster size to 1).

Experiment with the [companion Shiny app](https://lehner.shinyapps.io/dil_power/) to see how detrimental ICC is for power.

