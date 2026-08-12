---
layout: default
title: Data principles
nav_order: 3
has_children: true
type: hub
audience: Anyone at DIL writing code or working with data
last_reviewed: 2026-07-30
---

## Data principles

<div class="ref-summary" markdown="1">
One basic idea sits behind everything here: **anyone at any point should be able to understand, use, and scrutinize the analytics developed at DIL**. Click through any card below for the full guidance, links, and examples.
</div>

<hr class="section-divider">

## Writing code

<div class="card-grid">

<a class="card" href="choose-wisely.html">
<h4>Choose wisely</h4>
<p>Pick one software for all the analytics in a project and plan the workflow before any data arrives.</p>
<span class="read-more">Read more &rarr;</span>
</a>

<a class="card" href="live-forever.html">
<h4>Code should live forever</h4>
<p>Any researcher should be able to run your code without errors and get consistent results.</p>
<span class="read-more">Read more &rarr;</span>
</a>

<a class="card" href="dont-repeat-yourself.html">
<h4>Don't repeat yourself</h4>
<p>Copy-pasted a chunk of code more than twice? Turn it into a function or loop.</p>
<span class="read-more">Read more &rarr;</span>
</a>

<a class="card" href="be-kind-to-your-reader.html">
<h4>Be kind to your reader</h4>
<p>Write code as if a stranger will read it: modular scripts, a style guide, and a README kept up to date.</p>
<span class="read-more">Read more &rarr;</span>
</a>

<a class="card" href="track-changes.html">
<h4>Track your changes</h4>
<p>Learn git and use it from day one, for code, codebooks, tables, and figures alike.</p>
<span class="read-more">Read more &rarr;</span>
</a>

<a class="card" href="ask-questions.html">
<h4>Ask questions</h4>
<p>Search first. If 15 minutes doesn't turn up an answer, ask a clear, reproducible question.</p>
<span class="read-more">Read more &rarr;</span>
</a>

<a class="card" href="automate-your-workflow.html">
<h4>Automate your workflow from the start</h4>
<p>Build one main script that runs the whole project end to end, no hand-copied outputs.</p>
<span class="read-more">Read more &rarr;</span>
</a>

<a class="card" href="test-your-code.html">
<h4>Test your code continuously</h4>
<p>Re-run your code from the top regularly, and use unit testing and defensive programming.</p>
<span class="read-more">Read more &rarr;</span>
</a>

<a class="card" href="learn.html">
<h4>There's always more to learn</h4>
<p>Read other people's code and have them read yours. Cultivate the habit of checking the help file.</p>
<span class="read-more">Read more &rarr;</span>
</a>

</div>

<hr class="section-divider">

## Working with data

<div class="card-grid">

<a class="card" href="touch-whatever-you-want.html">
<h4>Touch whatever you want...</h4>
<p>Explore the data directly before modeling anything: unit of observation, summary stats, outliers, missingness.</p>
<span class="read-more">Read more &rarr;</span>
</a>

<a class="card" href="dont-move-anything.html">
<h4>...and please don't move anything</h4>
<p>Never edit data directly. Change it through code and keep raw data untouched in its own folder.</p>
<span class="read-more">Read more &rarr;</span>
</a>

<a class="card" href="show-dont-tell.html">
<h4>Show, don't (just) tell</h4>
<p>Show your data, not just your methods: summary tables, raw inputs, and polished plots for publication.</p>
<span class="read-more">Read more &rarr;</span>
</a>

<a class="card" href="start-simple.html">
<h4>Start simple</h4>
<p>Build models in stages of increasing complexity, and consider testing against simulated data first.</p>
<span class="read-more">Read more &rarr;</span>
</a>

<a class="card" href="create-good-datasets.html">
<h4>Create good data sets</h4>
<p>Keep data tidy, with clearly labeled keys and a maintained codebook.</p>
<span class="read-more">Read more &rarr;</span>
</a>

</div>

For what to do specifically with sensitive or confidential data, see [IRB & ethics → Be mindful of sensitive data]({{ site.baseurl }}{% link irb/sensitive-data.md %}).
