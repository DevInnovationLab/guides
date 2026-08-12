---
layout: default
title: Bad for power
grand_parent: Research resources
parent: Power calculations
nav_order: 30
has_children: true
has_toc: true
type: explanation
audience: Anyone at DIL planning, reviewing, or troubleshooting a power calculation for a study design
last_reviewed: 2026-07-30
---

## Important Aspects That Can Hurt Power

<div class="ref-summary" markdown="1">
This page walks through three factors — spillovers, the budget split between arms, and take-up — that can quietly undercut a power calculation's assumptions, explaining why each matters and what to do about it; use it as a checklist when reviewing a power calculation for a new or ongoing study.
</div>

<hr class="section-divider">

### Spillovers

Spillovers can lead to biased estimates of treatment effects.
Think of a scenario where the spillover effects on untreated individuals are positive.
The point estimate of the treatment dummy will generally be smaller than it would have been without spillovers.
The most straightforward solution to avoid complications stemming from spillovers is to refine the study design.
Randomizing at a cluster level and choosing clusters far apart from each other could be an obvious first step.
Sometimes we explicitly want to assess the degree of spillovers.
This could be done e.g. with a so-called saturation design where the treatment intensity is varied across clusters.
<!-- See @DufloGlennersterKremer2007 or @AtheyImbens2017 for a discussion on spillovers.
@Vazquez-Bare2022 offers a more specialized and up-to-date econometric treatment of spillover effects in RCTs.
 -->

### Start with a scenario

> Consider a cash-transfer evaluation that randomizes households within the same villages: some households receive the transfer, their neighbors do not. Over the study period, treated households share part of the transfer with untreated neighbors through informal gifts, loans, and shared meals.
>
> When the results come in, the estimated effect on household consumption is smaller than the effect size the power calculation was built to detect — even though everyone involved thinks the program worked.
{: .example}

What happened here, and could the power calculation have seen it coming?

<details markdown="1">
<summary>Think it through, then expand</summary>

The untreated neighbors are not a clean control group: sharing means part of the treatment effect leaked into their own consumption. That is a positive spillover on the untreated, and it does exactly what causes trouble in a power calculation — it pushes the point estimate on the treatment dummy below what it would have been without spillovers, because the comparison group's outcome has been quietly pulled upward by the treatment itself. The gap between treatment and control understates the true effect, not because the program failed, but because "control" was not the counterfactual the power calculation assumed.

A power calculation run without this in mind will be calibrated to detect an effect size the design can no longer produce a clean estimate of. The fix is at the design stage, not the analysis stage: randomize at the cluster (e.g., village) level rather than the household level, choose clusters far enough apart that sharing across arms is limited, or, if the spillover itself is of interest, build a saturation design that varies treatment intensity across clusters so the spillover can be estimated directly rather than absorbed into noise.
</details>

### Budget/Money

The ex-ante optimal split between treatment and control arm is usually always 50/50.
When the cost to collect data from the control group is lower, it might make sense to collect more data from these non-treated units.
The optimal sampling ratio would then be proportional to the unit-costs in each arm.
<!--  see e.g. @DufloGlennersterKremer2007 for more details.
Chapter 6 of @McConnellVera-Hernandez2015 offers an even deeper dive, looking into heterogeneous costs etc. -->

### Takeup

Overly optimistic assumptions for the first stage can lead to a severely underpowered second stage.
For instance, to be powered to detect the same effect size with 25% take-up, we would need to offer treatment to 16 times more people and provide treatment to 8 times more people (assuming equal numbers of treatment and control) than if we had 100% take-up (McKenzie [2011](#sources)).
In some instances, take-up is less relevant than in others.
For example, sometimes the policy-relevant estimand is an intention to treat (ITT), i.e. the effect of treatment assignment and not treatment taken.
Regardless of what the estimand is, we always have to think carefully about how we can ensure high take-up rates and thus increase power and reduce costs.

<hr class="section-divider">

## Sources

McKenzie, David. 2011. ["Power Calculations 101: Dealing with Incomplete Take-up."](https://blogs.worldbank.org/impactevaluations/power-calculations-101-dealing-with-incomplete-take-up) *World Bank Blogs: Development Impact.*