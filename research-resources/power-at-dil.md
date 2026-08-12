---
layout: default
title: Power calculations at DIL
grand_parent: Research resources
parent: Power calculations
nav_order: 1
type: reference
audience: Anyone at DIL preparing, maintaining, or reviewing a project's power calculation summary
last_reviewed: 2026-07-30
---

## Power calculations at DIL

<div class="ref-summary" markdown="1">
DIL's standard for a project's power calculation summary: a single standing file, ideally a notebook combining code and text, maintained throughout the project's lifecycle.
</div>

### Format and ownership

- A single standing file, ideally a notebook combining code and text, so results and the code that produces them stay together.
- Contributed to by RAs, RPs, and PIs over the project's lifecycle. [Data principles]({{ site.baseurl }}{% link data-principles/data-principles.md %}) apply to this document as to any other code.

### Content order

1. An abstract summary of descriptive statistics: mean and standard deviation of outcomes, cluster sizes, estimated intra-cluster correlation, and expected effect sizes, with references to the supporting literature.
2. Simple power calculations from plug-in formulas.
3. More sophisticated designs, benchmarked against the plug-in results, showing how and why power changes (typically via simulation).

### Reproducibility and access

- Every number must be reproducible from code. Where no replication code exists, the formula inputs must be stated explicitly.
- Linked to the folder or repository containing the underlying code, kept up to date, and ideally pushed to the project's GitHub repository.

<div class="further-reading" markdown="1">
**Further reading**

[**Internal** -- Example notebooks (power/examples/, internal-resources repo)](https://github.com/DevInnovationLab/internal-resources/tree/main/power/examples){: .btn .btn-internal }{:target="_blank"}
</div>

