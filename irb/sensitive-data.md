---
layout: default
title: Be mindful of sensitive data
parent: IRB & ethics
nav_order: 2
type: explanation
audience: Anyone at DIL writing code, documentation, or other files that touch data about identifiable people
last_reviewed: 2026-07-30
---

## Be mindful of sensitive data

<div class="ref-summary" markdown="1">
This page explains why confidential information about research participants should never live in code, documentation, or other files that do not follow the same secure storage protocols as the raw data, and points to further guidance on data security and disclosure control.
</div>

<hr class="section-divider">

## Protect participants across your whole workflow

Researchers have a responsibility to protect all human subjects participating in their studies. **Make sure to familiarize yourself with and implement all of the data privacy and security guidelines at your institution**. Regardless of institution-specific guidelines, most of us already have the habit of **removing sensitive information from datasets as soon as possible in our workflow and keeping it encrypted** even if that means it will take longer to access the files when needed. Nevertheless, one important practice that may slip our minds is to **never include confidential information in code, documentation and other files that may be shared in the future or do not follow the same secure storage protocols as the raw data**. For example, if you are writing code to correct information about one particular person in your data, make sure to use an anonymous key variable instead of including their names on the code. And if the only way to identify that person is through their name, save the input file containing the name in an encrypted folder to be loaded by the code instead of writing it directly on the script. 

<hr class="section-divider">

## Start with a scenario

> You are writing code to correct a data entry error for one particular respondent. To find the right row, you write a line that filters on her name: `df[df.name == "..."]`.
{: .example}

What is wrong here?

<details markdown="1">
<summary>Think it through, then expand</summary>

The respondent's name is now sitting in a code file. Code is exactly the kind of file that gets shared, versioned, and reused in ways the raw data is not: it may be committed to a repository, sent to a coauthor, posted alongside a replication package, or simply kept somewhere without the encryption applied to the raw dataset. None of that requires anyone to act carelessly with the raw data itself; the name leaks through the script instead.

Two fixes, corresponding to the two practices described above:

* If the person can be identified some other way, such as a household or respondent ID already in the data, filter on that anonymous key instead of the name.
* If the only way to identify the right row is by name, do not write the name into the script at all. Save it in a separate input file, keep that file in an encrypted folder, and have the code load it from there.

Either way, the script itself never becomes a place where confidential information is stored.
</details>

<hr class="section-divider">

## Further reading

[AEA Data Editor on coding for confidential data](https://aeadataeditor.github.io/posts/2022-04-13-coding-confidential){: .btn .btn-more }{:target="_blank"}
[R package for statistical disclosure control](https://sdcpractice.readthedocs.io/en/latest/sdcMicro.html){: .btn .btn-more }{:target="_blank"}
[**Internal** -- UChicago Sensitive Data Usage Guide](https://dataguide.uchicago.edu/){: .btn .btn-internal }{:target="_blank"}
