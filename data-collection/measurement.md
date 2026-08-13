---
layout: default
title: Measurement
parent: Data collection
nav_order: 1
type: reference
audience: Anyone at DIL designing instruments, choosing indicators, or reviewing a questionnaire
last_reviewed: 2026-07-30
---

## Measurement

<div class="ref-summary" markdown="1">
This page is the reference for turning a research question into indicators and survey questions. Use it to look up a definition, check an indicator against criteria, or diagnose a question that is not working. It covers the vocabulary and the standard failure cases; it does not walk you through a specific instrument end to end. For the mechanics of programming and testing an instrument, see the survey programming how-to guide.
</div>

<hr class="section-divider">

## Where measurement sits in a project

A theory of change identifies both what to measure and where along the causal pathway to measure it.

| Stage | Definition |
|---|---|
| **Needs** | The problem being addressed |
| **Inputs** | Resources the program requires |
| **Activities** | What the program does |
| **Outputs** | What gets delivered |
| **Intermediate outcomes** | Changes expected before the final outcome |
| **Final outcomes** | The changes the program ultimately targets |

An example pathway, for an adolescent gender attitudes program:

| Stage | Content |
|---|---|
| Needs | Gender inequality and discrimination among adolescents |
| Inputs | Trained teachers; culturally appropriate curriculum |
| Activities | Teachers run structured classroom sessions on gender roles and stereotypes |
| Outputs | Students attend and participate in sessions |
| Intermediate outcomes | Students show more progressive gender attitudes |
| Final outcomes | Reduced gender-based discrimination; increased autonomy |

Every arrow between stages rests on an assumption, for instance that the curriculum is culturally appropriate and that students are willing and able to participate. If an assumption fails, the pathway breaks at that point, and the impact estimate at the end of the chain will not tell you where. Assumptions are therefore candidates for measurement in their own right, not just the outcomes at the ends.

<hr class="section-divider">

## Start with a scenario

> Your research question is whether a program improved household water safety. The instrument asks: *How often do you treat your household's drinking water?*
>
> Enumerators report that the question goes fine in the field. Nobody refuses it, nobody asks for clarification, and the completion rate is high.
{: .example}

What is wrong here? Nothing in the field logs will flag this question, and that is the problem. Three separate terms are doing undefined work:

* **"How often"** has no unit and no reference period. One respondent answers for a typical week, another for the last few days, another gives a general disposition.
* **"Treat"** covers boiling, chlorine tablets, filtering, and letting sediment settle. Two households doing entirely different things both answer "always."
* **"Drinking water"** does not say which container, or whether water stored for other uses counts.

Two respondents behaving identically can give different answers, and two respondents behaving differently can give the same one. The variation you end up analyzing is partly variation in interpretation.

Notice what is not the fix. Adding response options such as *always / sometimes / never* makes the answers tidier without making them comparable, because the ambiguity is in the question rather than the scale. The fix is to name one specific observable action and a fixed window: *In the past 7 days, on how many days did you add chlorine to your household's stored drinking water?*

<hr class="section-divider">

## The measurement chain

Four steps separate an abstract concept from a recorded value. Each step is a place where error enters.

| Step | Definition | Example |
|---|---|---|
| **Construct** | What you are trying to measure, often abstract | Female empowerment |
| **Indicator** | A concrete way to measure the construct | Whether she makes purchasing decisions |
| **Data collection** | The instrument or procedure used to gather a response | A household survey |
| **Data** | The response actually recorded | Her survey answer |

Error at the construct to indicator step is a validity problem, and no amount of careful fieldwork corrects it. Error at the data collection to data step is what the [threats to inference](#threats-to-inference) below address.

<hr class="section-divider">

## What to measure

Six categories of data, each answering a different question about the program.

| Category | What it covers | Why it is collected |
|---|---|---|
| **Outcomes** | The changes the theory of change points to | Primary estimand of the study |
| **Covariates** | Respondent and context characteristics | Explaining heterogeneity in effects |
| **Treatment compliance** | Take-up and adherence at individual and group level | Distinguishing implementation failure from theory failure |
| **Cost-effectiveness** | What the program actually costs to run | Comparing this use of resources against alternatives |
| **Qualitative information** | The why and how behind the numbers | Interpreting results and mechanisms |
| **Context for generalizability** | Features of the setting that condition the result | Judging whether the finding travels |

Which of these dominate depends on the stage of the research.

| Research stage | Question that identifies the data needed |
|---|---|
| Scoping and needs assessment | Which needs are imperative? Which assumptions in the pathway are likely to be met? |
| Tracking implementation | What would produce uneven or incomplete implementation, or is critical to the program working at all? |
| Evaluating impact | Which outcomes would you judge the program's effectiveness on? |

<hr class="section-divider">

## Criteria for measurability

Applied to the construct before an indicator is drafted, to establish that it can be measured at all.

| Criterion | Definition |
|---|---|
| **Observable** | A behavior or trait an enumerator or instrument can detect, not only something felt or believed |
| **Feasible** | Collectible ethically, affordably, and without causing harm |
| **Detectable** | A survey or measure exists that is sensitive enough to catch the expected difference between groups |

<hr class="section-divider">

## Criteria for indicators

Four criteria, applied to each candidate indicator once the construct clears measurability.

| Criterion | Definition | Failure mode |
|---|---|---|
| **Valid** | Measures the concept in the research question, not a convenient proxy for it | Answers a different question than the one asked |
| **Reliable** | Consistent across enumerators and repeat visits under similar conditions | Variation in the data reflects who collected it, not what happened |
| **Feasible** | Collectible given budget, timeline, respondent burden, and field conditions | Designed but never collected, or collected badly |
| **Specific** | Sensitive to the size of effect the program is expected to produce | A real effect registers as no effect |

<hr class="section-divider">

## Sources of data

| | Primary data | Secondary data |
|---|---|---|
| **Definition** | Collected directly, for your study | Collected by others, for other purposes |
| **Examples** | Surveys, interviews, direct observation, biomarkers | Government and census data, NGO or administrative records, existing datasets |
| **Control over content** | Full | None |
| **Cost and time** | High | Low |

<hr class="section-divider">

## Modes of data collection

| Mode | Description | Strengths | Limitations |
|---|---|---|---|
| **In person** | Enumerator visits face to face | Highest data quality, richest context | Highest cost and time |
| **Phone** | Enumerator calls the respondent | Faster and cheaper | Shorter instruments, less privacy, undersamples some groups |
| **Self-administered** | Respondent completes a web or paper form | Low cost | Literacy, technology access, and motivation become barriers |
| **Administrative records** | Already collected by another party | No respondent burden | No control over what was recorded or how |

<hr class="section-divider">

## Threats to inference

Eight recurring failures in question design. Each row links to the worked examples below.

| Threat | Definition | Diagnostic | Remedy |
|---|---|---|---|
| [**Vagueness**](#vagueness) | Key terms or reference periods can mean different things to different respondents | Could two respondents doing the same thing answer differently? | Name one specific, observable action and a fixed period |
| [**Double-barreled questions**](#double-barreled-questions) | Two conditions or actions bundled into one response | Does a "no" tell you which part failed? | One idea per question |
| [**Recall bias**](#recall-bias) | Reference period longer than respondents can reconstruct accurately | Would you remember this yourself over that window? | Shorten the window, or use bounded categories |
| [**Framing within the questionnaire**](#framing-within-the-questionnaire) | An earlier question primes the answer to a later one | Does anything before this question color it? | Place evaluative questions before potential primes, with neutral buffer questions |
| [**Anchoring bias**](#anchoring-bias) | Suggested examples or probes become the answer | Does the question or enumerator instruction supply candidate answers? | Let respondents answer unprompted, then probe neutrally |
| [**Presumptions**](#presumptions) | The question assumes something not yet established | Has the premise been confirmed by an earlier question? | Add a filter question with a skip pattern |
| [**Social desirability bias**](#social-desirability-bias) | Respondents overstate approved behavior | Is there an obviously correct answer? | Ask for counts of specific recent instances, not general compliance |
| [**Questionnaire exhaustion**](#questionnaire-exhaustion) | Attention degrades over length and repetition | Where does this sit in the instrument, and how often does it repeat? | Consolidate repeated blocks; put high-value questions early |

<hr class="section-divider">

## Worked examples

Twenty examples, all drawn from a chlorine testing survey. Each gives the flawed question, the problem, and a revision.

### Vagueness

**Example 1.** *How often do you treat your household's drinking water?*

**Problem.** "How often," "treat," and "drinking water" can each mean something different to each respondent. Boiling or chlorine tablets? Which container?

**Revised.** *In the past 7 days, on how many days did you add chlorine to your household's stored drinking water using the color disc or colorimeter kit?*

**Change.** One specific defined practice and a fixed 7-day recall window.

**Example 2.** *Is your household's water storage container clean? (Yes / No)*

**Problem.** "Clean" is undefined. Visibly clean, disinfected, or recently washed?

**Revised.** *Did you wash this water storage container with soap and water in the past 7 days? (Yes / No)*

**Change.** One specific observable action in a fixed window.

**Example 3.** *How long do you usually store water before drinking it?*

**Problem.** "Usually" is imprecise and no unit is given. Hours or days?

**Revised.** *About how many hours passed between when this water was collected and now?*

**Change.** One countable unit and a clear reference point.

### Double-barreled questions

**Example 4.** *Did you rinse the comparator vial and confirm the chlorine reading before recording it? (Yes / No)*

**Problem.** Two separate actions in one yes/no. A "no" does not identify which step was skipped.

**Revised.** *Q7a. Did you rinse the comparator vial with sample water before testing? (Yes / No)* and *Q7b. Did you confirm the chlorine reading by reading it a second time? (Yes / No)*

**Change.** One idea per question, so a "no" localizes the failure.

**Example 5.** *Is your household's stored water container covered and free of visible dirt? (Yes / No)*

**Problem.** Two separate conditions in one yes/no.

**Revised.** *Q14a. Is your household's stored water container covered? (Yes / No)* and *Q14b. Do you see any visible dirt or debris in the stored water? (Yes / No)*

**Change.** One condition per question.

**Example 6.** *Did the enumerator check the test kit contents and confirm none were expired? (Yes / No)*

**Problem.** Two separate checks, completeness and expiry, in one yes/no.

**Revised.** *Q43a. Are all listed items present in the test kit box? (Yes / No)* and *Q43b. Are any of the reagent sachets past their expiration date? (Yes / No)*

**Change.** Each check gets its own question.

### Recall bias

**Example 7.** *How many times did your household boil or treat its drinking water last month?*

**Problem.** A month is too long to recall accurately, and unusual days such as a visit from guests or an illness scare are remembered more vividly than routine ones.

**Revised.** *In the past 7 days, on how many days did your household boil or chemically treat its drinking water?*

**Change.** A window respondents can reconstruct.

**Example 8.** *About how many days ago was the water in this container collected?*

**Problem.** An open, unbounded recall question invites guessing.

**Revised.** *Was the water in this container collected today, yesterday, or more than 2 days ago?*

**Change.** Short bounded categories rather than an open estimate.

**Example 9.** *In the past year, how many times has your household run out of chlorine tablets or reagent?*

**Problem.** A year is too long to recall accurately for a minor recurring event.

**Revised.** *In the past 30 days, has your household run out of chlorine tablets or reagent? (Yes / No)*

**Change.** A shorter window and a simpler response format.

### Framing within the questionnaire

**Example 10.** *Q12 asks whether the storage container may be contaminated; Q18 asks for an overall rating of drinking water safety.*

**Problem.** Primed to think about contamination, respondents rate overall safety lower than they otherwise would. The rating measures the effect of Q12 as much as the state of the water.

**Revised.** The overall safety rating comes first in the module, before any question about possible contamination, separated by neutral buffer questions.

**Change.** Reordering removes the prime.

**Example 11.** *Q9 asks about diarrhea in the past 2 weeks; Q15 asks how satisfied the respondent is with drinking water quality.*

**Problem.** Primed to think about illness, respondents rate satisfaction lower than they otherwise would.

**Revised.** The satisfaction question comes first in the module, before any question about diarrhea or illness, separated by neutral buffer questions.

**Change.** The satisfaction rating reflects the water rather than a recent illness.

### Anchoring bias

**Example 12.** *What factors do you think affect your chlorine test results? If respondent is unsure, suggest "reagent age" or "not waiting long enough."*

**Problem.** The suggested examples become the answer. What comes back is a measure of what the enumerator planted rather than what the respondent believes.

**Revised.** Same question, with the instruction *let the respondent answer unprompted. Record verbatim, then ask "Anything else?" up to three times.*

**Change.** The respondent generates the list.

### Presumptions

**Example 13.** *How would you rate the free chlorine reading from your test this morning? (Very good / Acceptable / Concerning)*

**Problem.** Assumes the household ran a chlorine test this morning.

**Revised.** *Q10a. Did you or anyone in your household test the drinking water for chlorine this morning? (Yes / No)* then *Q10b. [If yes] How would you rate that free chlorine reading? (Very good / Acceptable / Concerning)*

**Change.** A filter question with a skip pattern for "no."

**Example 14.** *What type of container do you use to store your treated water?*

**Problem.** Assumes the household treats its water at all.

**Revised.** *Q25a. Do you treat your household's drinking water in any way? (Yes / No)* then *Q25b. [If yes] What type of container do you use to store that treated water?*

**Change.** A filter question establishes the premise.

**Example 15.** *How would you rate the color of the water sample you collected this morning? (Clear / Slightly cloudy / Cloudy)*

**Problem.** Assumes a sample was collected this morning.

**Revised.** *Q45a. Did you or anyone in your household collect a water sample this morning? (Yes / No)* then *Q45b. [If yes] How would you rate the color of that sample? (Clear / Slightly cloudy / Cloudy)*

**Change.** The question is only asked about a sample that exists.

### Social desirability bias

**Example 16.** *Do you always follow the full test protocol (rinsing, timing, and double-reading) when testing chlorine residual? (Always / Sometimes / Never)*

**Problem.** Respondents may overstate adherence to avoid seeming careless.

**Revised.** *In your last 5 chlorine tests, how many times did you wait the full 2 minutes before reading the result?*

**Change.** A neutral count of specific past instances instead of a self-assessment of doing it right.

**Example 17.** *Do you treat your drinking water before storing it? (Yes / No)*

**Problem.** A direct yes/no about an approved health behavior invites overstatement.

**Revised.** *In the past 7 days, on how many of the days did you treat water before storing it?*

**Change.** A count rather than a binary, which is harder to round up.

**Example 18.** *Did you dispose of the leftover test-sample water exactly as instructed? (Yes / No)*

**Problem.** A direct compliance question invites a socially desirable "yes."

**Revised.** *Where did you pour out the leftover test-sample water after finishing the test today?*

**Change.** An open behavior-based question instead of a compliance judgment.

### Questionnaire exhaustion

**Example 19.** *At question 52 of 65: repeat the free- and total-chlorine steps at low range, then again at high range, rating confidence in each of the 4 resulting readings.*

**Problem.** After four near-identical testing blocks, enumerators and respondents rush, skip steps, or record low-effort answers. The readings that matter most are collected when attention is lowest.

**Revised.** The four low and high range blocks are consolidated into one block with the range auto-selected by the instrument. Confidence is rated once rather than four times, moving the module from question 52 of 65 to question 18 of 40.

**Change.** The highest-value readings are captured while attention is still fresh.

**Example 20.** *The same 6-item "confidence in this reading" battery repeated identically after each of 4 readings, for 24 near-duplicate ratings in a row.*

**Problem.** Identical repetition exhausts respondents and enumerators alike, and produces straight-lining rather than information.

**Revised.** The confidence battery is asked once, after all readings are complete, referring respondents back to their own recorded values.

**Change.** One considered answer instead of four rushed ones.

<hr class="section-divider">

## Application sequence

The order in which the elements above are applied to a new instrument.

1. State the research question.
2. Write down the outcome you would need to observe to answer it.
3. Check the construct against observable, feasible, and detectable.
4. Draft two candidate indicators for that outcome and check each against valid, reliable, feasible, and specific.
5. Draft one survey question for the strongest indicator, including response options.
6. Check the question against each of the eight threats to inference.

<hr class="section-divider">

## Sources

Adapted from [2026_Measurement](https://drive.google.com/file/d/1a6c1Z3mrejq1XYqStIdMi05M0wkf9u-2/view){: .btn .btn-internal }{:target="_blank"} Measurement and Measurement Exercise, DIL Welcome Week, July 21, 2026.
